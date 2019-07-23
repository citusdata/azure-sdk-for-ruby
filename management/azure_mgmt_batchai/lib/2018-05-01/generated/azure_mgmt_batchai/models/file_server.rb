# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_05_01
  module Models
    #
    # File Server information.
    #
    class FileServer < ProxyResource

      include MsRestAzure

      # @return [String] VM size. VM size of the File Server.
      attr_accessor :vm_size

      # @return [SshConfiguration] SSH configuration. SSH configuration for
      # accessing the File Server node.
      attr_accessor :ssh_configuration

      # @return [DataDisks] Data disks configuration. Information about disks
      # attached to File Server VM.
      attr_accessor :data_disks

      # @return [ResourceId] Subnet. File Server virtual network subnet
      # resource ID.
      attr_accessor :subnet

      # @return [MountSettings] Mount settings. File Server mount settings.
      attr_accessor :mount_settings

      # @return [DateTime] Provisioning State Transition time. Time when the
      # provisioning state was changed.
      attr_accessor :provisioning_state_transition_time

      # @return [DateTime] Creation time. Time when the FileServer was created.
      attr_accessor :creation_time

      # @return [FileServerProvisioningState] Provisioning state. Provisioning
      # state of the File Server. Possible values: creating - The File Server
      # is getting created; updating - The File Server creation has been
      # accepted and it is getting updated; deleting - The user has requested
      # that the File Server be deleted, and it is in the process of being
      # deleted; failed - The File Server creation has failed with the
      # specified error code. Details about the error code are specified in the
      # message field; succeeded - The File Server creation has succeeded.
      # Possible values include: 'creating', 'updating', 'deleting',
      # 'succeeded', 'failed'
      attr_accessor :provisioning_state


      #
      # Mapper for FileServer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FileServer',
          type: {
            name: 'Composite',
            class_name: 'FileServer',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              vm_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vmSize',
                type: {
                  name: 'String'
                }
              },
              ssh_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sshConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SshConfiguration'
                }
              },
              data_disks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataDisks',
                type: {
                  name: 'Composite',
                  class_name: 'DataDisks'
                }
              },
              subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subnet',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceId'
                }
              },
              mount_settings: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.mountSettings',
                type: {
                  name: 'Composite',
                  class_name: 'MountSettings'
                }
              },
              provisioning_state_transition_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningStateTransitionTime',
                type: {
                  name: 'DateTime'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
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
