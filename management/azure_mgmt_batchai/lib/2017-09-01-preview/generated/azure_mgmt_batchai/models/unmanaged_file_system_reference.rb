# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2017_09_01_preview
  module Models
    #
    # Details of the file system to mount on the compute cluster nodes.
    #
    class UnmanagedFileSystemReference

      include MsRestAzure

      # @return [String] Command used to mount the unmanaged file system.
      attr_accessor :mount_command

      # @return [String] Specifies the relative path on the compute cluster
      # node where the file system will be mounted. Note that all file shares
      # will be mounted under $AZ_BATCHAI_MOUNT_ROOT location.
      attr_accessor :relative_mount_path


      #
      # Mapper for UnmanagedFileSystemReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UnmanagedFileSystemReference',
          type: {
            name: 'Composite',
            class_name: 'UnmanagedFileSystemReference',
            model_properties: {
              mount_command: {
                client_side_validation: true,
                required: true,
                serialized_name: 'mountCommand',
                type: {
                  name: 'String'
                }
              },
              relative_mount_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'relativeMountPath',
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
