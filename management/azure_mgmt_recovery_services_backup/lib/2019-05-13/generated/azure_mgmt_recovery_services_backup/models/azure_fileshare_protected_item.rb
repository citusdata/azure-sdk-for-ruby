# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # Azure File Share workload-specific backup item.
    #
    class AzureFileshareProtectedItem < ProtectedItem

      include MsRestAzure


      def initialize
        @protectedItemType = "AzureFileShareProtectedItem"
      end

      attr_accessor :protectedItemType

      # @return [String] Friendly name of the fileshare represented by this
      # backup item.
      attr_accessor :friendly_name

      # @return [String] Backup status of this backup item.
      attr_accessor :protection_status

      # @return [ProtectionState] Backup state of this backup item. Possible
      # values include: 'Invalid', 'IRPending', 'Protected', 'ProtectionError',
      # 'ProtectionStopped', 'ProtectionPaused'
      attr_accessor :protection_state

      # @return [HealthStatus] backups running status for this backup item.
      # Possible values include: 'Passed', 'ActionRequired', 'ActionSuggested',
      # 'Invalid'
      attr_accessor :health_status

      # @return [String] Last backup operation status. Possible values:
      # Healthy, Unhealthy.
      attr_accessor :last_backup_status

      # @return [DateTime] Timestamp of the last backup operation on this
      # backup item.
      attr_accessor :last_backup_time

      # @return [AzureFileshareProtectedItemExtendedInfo] Additional
      # information with this backup item.
      attr_accessor :extended_info


      #
      # Mapper for AzureFileshareProtectedItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFileShareProtectedItem',
          type: {
            name: 'Composite',
            class_name: 'AzureFileshareProtectedItem',
            model_properties: {
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              workload_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'String'
                }
              },
              container_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerName',
                type: {
                  name: 'String'
                }
              },
              source_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              policy_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              last_recovery_point: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              backup_set_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupSetName',
                type: {
                  name: 'String'
                }
              },
              create_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'createMode',
                type: {
                  name: 'String'
                }
              },
              deferred_delete_time_in_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deferredDeleteTimeInUTC',
                type: {
                  name: 'DateTime'
                }
              },
              is_scheduled_for_deferred_delete: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isScheduledForDeferredDelete',
                type: {
                  name: 'Boolean'
                }
              },
              deferred_delete_time_remaining: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deferredDeleteTimeRemaining',
                type: {
                  name: 'String'
                }
              },
              is_deferred_delete_schedule_upcoming: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isDeferredDeleteScheduleUpcoming',
                type: {
                  name: 'Boolean'
                }
              },
              is_rehydrate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isRehydrate',
                type: {
                  name: 'Boolean'
                }
              },
              protectedItemType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'protectedItemType',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              protection_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionStatus',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              last_backup_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastBackupStatus',
                type: {
                  name: 'String'
                }
              },
              last_backup_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastBackupTime',
                type: {
                  name: 'DateTime'
                }
              },
              extended_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'AzureFileshareProtectedItemExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
