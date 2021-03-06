# frozen_string_literal: true

require 'rails_helper'
require 'support/barcode_helper'
require 'sample_accessioning_job'

RSpec.describe Sample, type: :model, accession: true, aker: true do
  include MockAccession

  context 'accessioning' do
    let!(:user) { create(:user, api_key: configatron.accession_local_key) }

    before do
      configatron.accession_samples = true
      Delayed::Worker.delay_jobs = false
      Accession.configure do |config|
        config.folder = File.join('spec', 'data', 'accession')
        config.load!
      end
    end

    after do
      Delayed::Worker.delay_jobs = true
      configatron.accession_samples = false
    end

    it 'will not proceed if the sample is not suitable' do
      sample = create(:sample_for_accessioning_with_open_study, sample_metadata: create(:sample_metadata_for_accessioning, sample_taxon_id: nil))
      expect(sample.sample_metadata.sample_ebi_accession_number).to be_nil
    end

    it 'will add an accession number if successful' do
      allow_any_instance_of(RestClient::Resource).to receive(:post).and_return(successful_accession_response)
      sample = create(:sample_for_accessioning_with_open_study, sample_metadata: create(:sample_metadata_for_accessioning))
      expect(sample.sample_metadata.sample_ebi_accession_number).to be_present
    end

    it 'will not add an accession number if it fails' do
      allow_any_instance_of(RestClient::Resource).to receive(:post).and_return(failed_accession_response)
      sample = build(:sample_for_accessioning_with_open_study, sample_metadata: create(:sample_metadata_for_accessioning))
      expect { sample.save! }.to raise_error(JobFailed)
      expect(sample.sample_metadata.sample_ebi_accession_number).to be_nil
    end
  end

  context 'can be included in submission' do
    it 'knows if it was registered through manifest' do
      stand_alone_sample = create :sample
      expect(stand_alone_sample).not_to be_registered_through_manifest

      sample_manifest = create :tube_sample_manifest_with_samples
      sample_manifest.samples.each do |sample|
        expect(sample).to be_registered_through_manifest
      end
    end

    it 'knows when it can be included in submission if it was registered through manifest' do
      sample_manifest = create :tube_sample_manifest_with_samples
      sample_manifest.samples.each do |sample|
        expect(sample).not_to be_can_be_included_in_submission
      end
      sample = sample_manifest.samples.first
      sample.sample_metadata.supplier_name = 'new sample'
      expect(sample).to be_can_be_included_in_submission
    end

    it 'knows when it can be included in submission if it was not registered through manifest' do
      sample = create :sample
      expect(sample).to be_can_be_included_in_submission
    end
  end

  context 'Aker' do
    include BarcodeHelper
    before do
      mock_plate_barcode_service
    end

    it 'can have many work orders' do
      job = create(:aker_job)
      expect(create(:sample, jobs: [job]).jobs).to include(job)
    end

    it 'can belong to a container' do
      container = create(:container)
      expect(create(:sample, container: container).container).to eq(container)
    end
  end

  context 'consent withdraw' do
    let(:user) { create :user }
    let(:time) { DateTime.now }
    let(:sample) { create :sample }

    before do
      sample.update(consent_withdrawn: true, date_of_consent_withdrawn: time, user_id_of_consent_withdrawn: user.id)
    end

    it 'has delegated the values to sample metadata' do
      expect(sample.consent_withdrawn).to eq(sample.sample_metadata.consent_withdrawn)
      expect(sample.date_of_consent_withdrawn).to eq(sample.sample_metadata.date_of_consent_withdrawn)
      expect(sample.user_id_of_consent_withdrawn).to eq(sample.sample_metadata.user_id_of_consent_withdrawn)
    end
  end

  context 'genome size' do
    it 'can be added to a sample' do
      sample = create(:sample, sample_metadata_attributes: { genome_size: 1000 })
      expect(sample.sample_metadata.genome_size).to eq(1000)
    end
  end

  describe '#control_formatted' do
    it 'is nil when control is nil' do
      sample = create(:sample, control: nil)
      expect(sample.control_formatted).to be_nil
    end

    it 'shows something useful when control type is positive' do
      sample = create(:sample, control: true, control_type: 'positive')
      expect(sample.control_formatted).to eq 'Yes (positive)'
    end

    it 'shows something useful when control type is negative' do
      sample = create(:sample, control: true, control_type: 'negative')
      expect(sample.control_formatted).to eq 'Yes (negative)'
    end

    it 'shows something useful when control type is unspecified' do
      sample = create(:sample, control: true, control_type: nil)
      expect(sample.control_formatted).to eq 'Yes (type unspecified)'
    end
  end

  context 'control_type validation' do
    subject { build(:sample, control: false, control_type: 'positive') }

    it { is_expected.not_to be_valid }
  end

  describe '#priority', :aggregate_failures do
    it 'will have a default priority of nopriority - 0' do
      expect(build(:sample).priority).to eq('no_priority')
    end

    it 'can have a priority' do
      %w[backlog surveillance priority].each do |priority|
        expect(build(:sample, priority: priority).priority).to eq(priority)
      end
    end
  end
end
