# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Accession::Submission, type: :model, accession: true do
  let!(:user)     { create(:user) }
  let!(:sample)   { build(:accession_sample) }

  it 'is not valid without a user' do
    expect(described_class.new(user, nil)).not_to be_valid
  end

  it 'is not valid without an accession sample' do
    expect(described_class.new(nil, sample)).not_to be_valid
  end

  it 'is not valid unless sample is valid' do
    expect(described_class.new(user, build(:invalid_accession_sample))).not_to be_valid
  end

  it 'creates some xml with valid attributes' do
    submission = described_class.new(user, sample)
    xml = Nokogiri::XML::Document.parse(submission.to_xml)

    submission_xml = xml.at('SUBMISSION')
    expect(submission_xml.attribute('center_name').value).to eq(Accession::CENTER_NAME)
    expect(submission_xml.attribute('broker_name').value).to eq(submission.service.broker)
    expect(submission_xml.attribute('alias').value).to eq(submission.sample.ebi_alias_datestamped)
    expect(submission_xml.attribute('submission_date').value).to eq(submission.date)

    contact_xml = xml.at('CONTACT')
    submission.contact.to_h.each do |attribute, value|
      expect(contact_xml.attribute(attribute.to_s).value).to eq(value)
    end

    expect(xml.at(submission.service.visibility)).to be_present

    expect(xml.at('ACTIONS').children.length).to eq(2)

    action_xml = xml.at('ADD')
    expect(action_xml.attribute('source').value).to eq(submission.sample.filename)
    expect(action_xml.attribute('schema').value).to eq(submission.sample.schema_type)
  end

  it 'creates a payload' do
    payload = described_class.new(user, sample).payload
    expect(payload.count).to eq(2)
    expect(payload).to be_all { |_, file| File.file?(file) }
    expect(payload).to be_all { |key, _| key.match(/\p{Lower}/).nil? }
  end

  it 'posts the submission and return an appropriate response' do
    submission = described_class.new(user, sample)

    allow(Accession::Request).to receive(:post).with(submission).and_return(build(:successful_accession_response))
    submission.post
    expect(submission).to be_accessioned

    allow(Accession::Request).to receive(:post).with(submission).and_return(build(:failed_accession_response))
    submission.post
    expect(submission).not_to be_accessioned
  end

  it 'updates the accession number if the submission is successfully posted' do
    submission = described_class.new(user, sample)
    submission.update_sample_accession_details
    expect(submission.sample).not_to be_accessioned

    allow(Accession::Request).to receive(:post).with(submission).and_return(build(:successful_accession_response))
    submission.post
    submission.update_sample_accession_details
    expect(submission.sample).to be_accessioned
  end
end
