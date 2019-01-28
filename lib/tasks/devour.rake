# frozen_string_literal: true

namespace :devour do
  desc 'Spits out a devour-client configuration'
  task create_config: :environment do
    # We prettify are json to make it both easier to read and diff
    json_formatting = { indent: '  ', object_nl: "\n", space: ' ', array_nl: "\n" }

    config = Api::V2.constants
                    .reject { |resource_key| resource_key == :BaseResource }
                    .map do |resource_key|

      resource = Api::V2.const_get(resource_key)

      attributes = {}
      resource._attributes.each_key do |attr|
        next if attr == :id

        attributes[attr] = ''
      end
      resource._relationships.each do |attr, details|
        relation = details.is_a?(JSONAPI::Relationship::ToOne) ? 'hasOne' : 'hasMany'
        attributes[attr] = { jsonApi: relation }
        attributes[attr][:type] = details.resource_klass._type.to_s.singularize unless details.polymorphic?
      end
      {
        resource: resource._type.to_s.singularize,
        attributes: attributes,
        options: {}
      }
    end

    serialized_config = JSON.generate(config, json_formatting)

    puts <<~HEREDOC
      /*
       * Auto-generated by Sequencescape on #{Time.zone.now}"
       * Using #{Deployed::VERSION_COMMIT}
       * bundle exec rake devour:create_config"
       *
       */

      /* Our configuration is essentially JSON, so we allow double quotes */
      /* eslint quotes: ["error", "double"] */
      const resources = #{serialized_config}

      export default resources
    HEREDOC
  end
end
