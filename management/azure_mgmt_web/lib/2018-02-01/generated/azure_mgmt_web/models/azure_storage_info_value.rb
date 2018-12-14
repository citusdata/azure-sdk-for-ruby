# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Azure Files or Blob Storage access information value for dictionary
    # storage.
    #
    class AzureStorageInfoValue

      include MsRestAzure

      # @return [AzureStorageType] Type of storage. Possible values include:
      # 'AzureFiles', 'AzureBlob'
      attr_accessor :type

      # @return [String] Name of the storage account.
      attr_accessor :account_name

      # @return [String] Name of the file share (container name, for Blob
      # storage).
      attr_accessor :share_name

      # @return [String] Access key for the storage account.
      attr_accessor :access_key

      # @return [String] Path to mount the storage within the site's runtime
      # environment.
      attr_accessor :mount_path

      # @return [AzureStorageState] State of the storage account. Possible
      # values include: 'Ok', 'InvalidCredentials', 'InvalidShare'
      attr_accessor :state


      #
      # Mapper for AzureStorageInfoValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureStorageInfoValue',
          type: {
            name: 'Composite',
            class_name: 'AzureStorageInfoValue',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'AzureStorageType'
                }
              },
              account_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'accountName',
                type: {
                  name: 'String'
                }
              },
              share_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'shareName',
                type: {
                  name: 'String'
                }
              },
              access_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'accessKey',
                type: {
                  name: 'String'
                }
              },
              mount_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mountPath',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'AzureStorageState'
                }
              }
            }
          }
        }
      end
    end
  end
end