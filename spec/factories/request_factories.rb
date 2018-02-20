# frozen_string_literal: true

# Please note: This is a new file to help improve factory organization.
# Some requests factories may exist elsewhere, especially in the domain
# files, such as pipelines and in the catch all factory folder.
# Create all new request factories here, and move others as you find them,
# especially if you change them, otherwise merges could get messy.

# The factories in here, at time of writing could do with a bit of TLC.
# - Remove references to existing request types, build one instead!
# - All factories MUST be valid unless begining with invalid_ (allows us to lint factory girl)
# - Factories names after a class, eg. request, should NOT inherit. Use traits if there is shared behaviour.
# - Factories names after a class should avoid creating associations, except where they are required for the
#   request to be valid.
FactoryGirl.define do
  factory :multiplexed_library_creation_request, parent: :request  do
    sti_type      { RequestType.find_by(name: 'Multiplexed library creation').request_class_name }
    asset         { |asset| asset.association(:sample_tube)  }
    target_asset  { |asset| asset.association(:library_tube) }
    request_type  { RequestType.find_by(name: 'Multiplexed library creation') }
    after(:create) do |request|
      request.request_metadata.update_attributes!(
        fragment_size_required_from: 150,
        fragment_size_required_to: 400,
        library_type: 'Standard'
      )
    end
  end

  %w[failed passed pending cancelled].each do |request_state|
    factory :"#{request_state}_request", parent: :request do
      state request_state
    end
  end

  factory :request_base, class: Request do
    request_type
    request_purpose

    # Ensure that the request metadata is correctly setup based on the request type
    after(:build) do |request|
      next if request.request_type.nil?
      request.request_metadata_attributes = attributes_for(:"request_metadata_for_#{request.request_type.name.downcase.gsub(/[^a-z]+/, '_')}") if request.request_metadata.new_record?
      request.sti_type = request.request_type.request_class_name
    end

    factory :customer_request, class: CustomerRequest do
      sti_type 'CustomerRequest' # Oddly, this seems to be necessary!
      association(:request_type, factory: :customer_request_type)
    end
  end

  factory :sequencing_request, class: SequencingRequest do
    association(:request_type, factory: :sequencing_request_type)
    request_purpose
    sti_type 'SequencingRequest'
    request_metadata_attributes { attributes_for :request_metadata_for_standard_sequencing_with_read_length }

    factory(:sequencing_request_with_assets) do
      association(:asset, factory: :library_tube)
      association(:target_asset, factory: :lane)
    end
  end

  factory(:library_creation_request, parent: :request, class: LibraryCreationRequest) do
    asset         { |asset| asset.association(:sample_tube) }
    request_type  { RequestType.find_by!(name: 'Library creation') }
    after(:create) do |request|
      request.request_metadata.update_attributes!(
        fragment_size_required_from: 100,
        fragment_size_required_to: 200,
        library_type: 'Standard'
      )
    end
  end

  # Well based library request as used in eg. Limber pipeline
  factory :library_request, class: IlluminaHtp::Requests::StdLibraryRequest do
    association(:asset, factory: :well)
    association(:request_type, factory: :library_request_type)
    request_purpose
    request_metadata_attributes { attributes_for :request_metadata_for_library_manufacture }

    factory :gbs_request, class: IlluminaHtp::Requests::GbsRequest do
      request_metadata_attributes { attributes_for :request_metadata_for_gbs }
    end
  end

  factory(:multiplex_request, class: Request::Multiplexing) do
    asset nil
    association(:target_asset, factory: :multiplexed_library_tube)
    request_purpose
  end

  factory :cherrypick_request do
    association :asset, factory: :well
    association :target_asset, factory: :well
    request_purpose

    # Adds the associations needed for processing down a pipeline
    factory :cherrypick_request_for_pipeline do
      association :asset, factory: :well_with_sample_and_plate
      submission
    end
  end

  factory :request_without_assets, parent: :request_base do
    transient do
      user_login { 'abc123' }
    end

    item
    project
    state 'pending'
    study
    user { User.find_by(login: user_login) || create(:user, login: user_login) }
  end

  factory :request, parent: :request_without_assets do
    # the sample should be setup correctly and the assets should be valid
    association(:asset, factory: :sample_tube)
    association(:target_asset, factory: :empty_library_tube)

    factory :request_with_submission do
      after(:build) do |request|
        unless request.submission
          request.submission = FactoryHelp.submission(
            study: request.initial_study,
            project: request.initial_project,
            request_types: [request.request_type.try(:id)].compact.map(&:to_s),
            user: request.user,
            assets: [request.asset].compact,
            request_options: request.request_metadata.attributes
          )
        end
      end
    end
  end

  factory :request_with_sequencing_request_type, parent: :request_without_assets do
    # the sample should be setup correctly and the assets should be valid
    asset            { |asset|    asset.association(:library_tube) }
    request_metadata { |metadata| metadata.association(:request_metadata_for_standard_sequencing) }
    request_type     { |rt|       rt.association(:sequencing_request_type) }
  end

  factory :well_request, parent: :request_without_assets do
    # the sample should be setup correctly and the assets should be valid
    request_type { |rt|    rt.association(:well_request_type) }
    asset        { |asset| asset.association(:well) }
    target_asset { |asset| asset.association(:well) }
  end

  factory :request_suitable_for_starting, parent: :request_without_assets do
    asset        { |asset| asset.association(:sample_tube)        }
    target_asset { |asset| asset.association(:empty_library_tube) }
  end

  factory :pooled_cherrypick_request do
    asset { |asset| asset.association(:well_with_sample_and_without_plate) }
    request_purpose
  end

  factory :lib_pcr_xp_request, parent: :request_without_assets do
    request_type { |rt|    rt.association(:lib_pcr_xp_request_type) }
    asset        { |asset| asset.association(:well) }
    target_asset { |asset| asset.association(:empty_library_tube) }
  end

  factory :request_traction_grid_ion, class: Request::Traction::GridIon do
    association(:asset, factory: :well)
    target_asset nil
    request_purpose
    association(:request_type, factory: :well_request_type)
    request_metadata_attributes { attributes_for(:request_traction_grid_ion_metadata) }
  end

  factory :request_without_submission, class: Request do
    request_type    { |rt| rt.association(:request_type) }
    request_purpose { |rt| rt.association(:request_purpose) }

    # Ensure that the request metadata is correctly setup based on the request type
    after(:build) do |request|
      next if request.request_type.nil?
      request.request_metadata = build(:"request_metadata_for_#{request.request_type.name.downcase.gsub(/[^a-z]+/, '_')}") if request.request_metadata.new_record?
      request.sti_type = request.request_type.request_class_name
    end
  end

  factory(:library_creation_request_for_testing_sequencing_requests, class: Request::LibraryCreation) do
    request_type { |_target| RequestType.find_by!(name: 'Library creation') }
    request_purpose { |rp| rp.association(:request_purpose) }
    asset        { |target| target.association(:well_with_sample_and_plate) }
    target_asset { |target| target.association(:empty_well) }
    after(:build) do |request|
      request.request_metadata.fragment_size_required_from = 300
      request.request_metadata.fragment_size_required_to   = 500
    end
  end

  factory(:external_multiplexed_library_tube_creation_request, class: ExternalLibraryCreationRequest) do
    request_type { |_target| RequestType.find_by!(name: 'External Multiplexed Library Creation') }
    request_purpose { |rp| rp.association(:request_purpose) }
    asset { create(:library_tube) }
    target_asset { create(:multiplexed_library_tube) }
  end

  factory :pac_bio_sample_prep_request do |_r|
    target_asset    { |ta| ta.association(:pac_bio_library_tube) }
    asset           { |a|   a.association(:well) }
    submission      { |s|   s.association(:submission) }
    request_purpose { |rp| rp.association(:request_purpose) }
  end

  factory :pac_bio_sequencing_request do
    target_asset    { |ta| ta.association(:well) }
    asset           { |a|   a.association(:pac_bio_library_tube) }
    submission      { |s|   s.association(:submission) }
    request_type    { |s| s.association(:pac_bio_sequencing_request_type) }
    request_purpose
  end
end
