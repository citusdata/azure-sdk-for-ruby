# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # Common settings field for backup management
    #
    class Settings

      include MsRestAzure

      # @return [String] TimeZone optional input as string. For example:
      # TimeZone = "Pacific Standard Time".
      attr_accessor :time_zone

      # @return [Boolean] SQL compression flag
      attr_accessor :issqlcompression

      # @return [Boolean] Workload compression flag. This has been added so
      # that 'isSqlCompression'
      # will be deprecated once clients upgrade to consider this flag.
      attr_accessor :is_compression


      #
      # Mapper for Settings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Settings',
          type: {
            name: 'Composite',
            class_name: 'Settings',
            model_properties: {
              time_zone: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeZone',
                type: {
                  name: 'String'
                }
              },
              issqlcompression: {
                client_side_validation: true,
                required: false,
                serialized_name: 'issqlcompression',
                type: {
                  name: 'Boolean'
                }
              },
              is_compression: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isCompression',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
