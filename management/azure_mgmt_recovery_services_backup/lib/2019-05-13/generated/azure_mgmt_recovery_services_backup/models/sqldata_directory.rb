# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # SQLDataDirectory info
    #
    class SQLDataDirectory

      include MsRestAzure

      # @return [SQLDataDirectoryType] Type of data directory mapping. Possible
      # values include: 'Invalid', 'Data', 'Log'
      attr_accessor :type

      # @return [String] File path
      attr_accessor :path

      # @return [String] Logical name of the file
      attr_accessor :logical_name


      #
      # Mapper for SQLDataDirectory class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SQLDataDirectory',
          type: {
            name: 'Composite',
            class_name: 'SQLDataDirectory',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'path',
                type: {
                  name: 'String'
                }
              },
              logical_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'logicalName',
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
