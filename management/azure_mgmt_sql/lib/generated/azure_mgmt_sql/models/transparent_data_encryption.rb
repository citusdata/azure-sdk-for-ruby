# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents an Azure SQL Database Transparent Data Encryption .
    #
    class TransparentDataEncryption < SqlSubResource

      include MsRestAzure

      # @return [TransparentDataEncryptionStates] The status of the Azure SQL
      # Database Transparent Data Encryption. Possible values include:
      # 'Enabled', 'Disabled'
      attr_accessor :status


      #
      # Mapper for TransparentDataEncryption class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TransparentDataEncryption',
          type: {
            name: 'Composite',
            class_name: 'TransparentDataEncryption',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'TransparentDataEncryptionStates'
                }
              }
            }
          }
        }
      end
    end
  end
end