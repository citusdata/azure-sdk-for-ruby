# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationsManagement::Mgmt::V2015_11_01_preview
  module Models
    #
    # the list of ManagementAssociation response
    #
    class ManagementAssociationPropertiesList

      include MsRestAzure

      # @return [Array<ManagementAssociation>] List of Management Association
      # properties within the subscription.
      attr_accessor :value


      #
      # Mapper for ManagementAssociationPropertiesList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagementAssociationPropertiesList',
          type: {
            name: 'Composite',
            class_name: 'ManagementAssociationPropertiesList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagementAssociationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagementAssociation'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
