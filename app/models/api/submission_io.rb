class Api::SubmissionIO < Api::Base
  renders_model(::Submission)

  map_attribute_to_json_attribute(:uuid)
  map_attribute_to_json_attribute(:id, 'internal_id')
  map_attribute_to_json_attribute(:created_at)
  map_attribute_to_json_attribute(:updated_at)
  map_attribute_to_json_attribute(:state)
  map_attribute_to_json_attribute(:message)
  
  with_association(:orders) do
  map_attribute_to_json_attribute(:template_name)
  map_attribute_to_json_attribute(:comments)
    with_association(:project) do
      map_attribute_to_json_attribute(:uuid  , 'project_uuid')
      map_attribute_to_json_attribute(:id  , 'project_internal_id')
      map_attribute_to_json_attribute(:name  , 'project_name')
    end

    with_association(:study) do 
      map_attribute_to_json_attribute(:uuid  , 'study_uuid')
      map_attribute_to_json_attribute(:id  , 'study_internal_id')
      map_attribute_to_json_attribute(:name  , 'study_name')
    end
    with_association(:user) do 
      map_attribute_to_json_attribute(:login  , 'created_by')
    end

    extra_json_attributes do |object, json_attributes|
      json_attributes["asset_uuids"] = object.asset_uuids
      json_attributes["request_options"] =  object.request_options_structured unless object.request_options_structured.blank?
    end
  end

end
