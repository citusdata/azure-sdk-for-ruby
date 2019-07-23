# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2019_05_05_preview
  module Models
    #
    # Data contract for patch
    #
    class PatchObject

      include MsRestAzure

      # @return [ActionRuleStatus] Indicates if the given action rule is
      # enabled or disabled. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :status

      # @return tags to be updated
      attr_accessor :tags


      #
      # Mapper for PatchObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PatchObject',
          type: {
            name: 'Composite',
            class_name: 'PatchObject',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
