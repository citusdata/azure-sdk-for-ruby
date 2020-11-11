# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # The status of the operation.
    #
    class SsisObjectMetadataStatusResponse

      include MsRestAzure

      # @return [String] The status of the operation.
      attr_accessor :status

      # @return [String] The operation name.
      attr_accessor :name

      # @return [String] The operation properties.
      attr_accessor :properties

      # @return [String] The operation error message.
      attr_accessor :error


      #
      # Mapper for SsisObjectMetadataStatusResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SsisObjectMetadataStatusResponse',
          type: {
            name: 'Composite',
            class_name: 'SsisObjectMetadataStatusResponse',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'String'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end