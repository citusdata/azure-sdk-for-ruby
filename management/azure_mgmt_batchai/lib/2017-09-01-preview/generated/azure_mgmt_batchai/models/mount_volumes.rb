# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2017_09_01_preview
  module Models
    #
    # Details of volumes to mount on the cluster.
    #
    class MountVolumes

      include MsRestAzure

      # @return [Array<AzureFileShareReference>] Azure File Share setup
      # configuration. References to Azure File Shares that are to be mounted
      # to the cluster nodes.
      attr_accessor :azure_file_shares

      # @return [Array<AzureBlobFileSystemReference>] Azure Blob FileSystem
      # setup configuration. References to Azure Blob FUSE that are to be
      # mounted to the cluster nodes.
      attr_accessor :azure_blob_file_systems

      # @return [Array<FileServerReference>] References to a list of file
      # servers that are mounted to the cluster node.
      attr_accessor :file_servers

      # @return [Array<UnmanagedFileSystemReference>] References to a list of
      # file servers that are mounted to the cluster node.
      attr_accessor :unmanaged_file_systems


      #
      # Mapper for MountVolumes class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MountVolumes',
          type: {
            name: 'Composite',
            class_name: 'MountVolumes',
            model_properties: {
              azure_file_shares: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureFileShares',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureFileShareReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureFileShareReference'
                      }
                  }
                }
              },
              azure_blob_file_systems: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureBlobFileSystems',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureBlobFileSystemReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureBlobFileSystemReference'
                      }
                  }
                }
              },
              file_servers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fileServers',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FileServerReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FileServerReference'
                      }
                  }
                }
              },
              unmanaged_file_systems: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unmanagedFileSystems',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UnmanagedFileSystemReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UnmanagedFileSystemReference'
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
