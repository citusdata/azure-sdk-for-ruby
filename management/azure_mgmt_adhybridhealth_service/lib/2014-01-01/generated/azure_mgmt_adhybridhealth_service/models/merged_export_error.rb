# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The merged export error.
    #
    class MergedExportError

      include MsRestAzure

      # @return [String] The error Id.
      attr_accessor :id

      # @return [String] The incoming object display name.
      attr_accessor :incoming_object_display_name

      # @return [String] The incoming object type.
      attr_accessor :incoming_object_type

      # @return [String] The user principal name
      attr_accessor :user_principal_name

      # @return [String] The type of the error.
      attr_accessor :type

      # @return [String] The attribute name.
      attr_accessor :attribute_name

      # @return [String] The attribute value.
      attr_accessor :attribute_value

      # @return [DateTime] The date and time when the error occurred.
      attr_accessor :time_occurred

      # @return [DateTime] The time when the error first occurred.
      attr_accessor :time_first_occurred

      # @return [String]  the cs object Id.
      attr_accessor :cs_object_id

      # @return [String] the DN of the object.
      attr_accessor :dn

      # @return [AssociatedObject] The incoming object details.
      attr_accessor :incoming_object

      # @return [AssociatedObject] The existing object
      attr_accessor :existing_object

      # @return [String] The modified or removed attribute value.
      attr_accessor :modified_or_removed_attribute_value

      # @return The run step result Id.
      attr_accessor :run_step_result_id

      # @return [String] The sam account name.
      attr_accessor :sam_account_name

      # @return [String] The server error details.
      attr_accessor :server_error_detail

      # @return The service Id.
      attr_accessor :service_id

      # @return The server Id.
      attr_accessor :service_member_id

      # @return The merged entity Id.
      attr_accessor :merged_entity_id

      # @return [DateTime] The date and time, in UTC, when the error was
      # created.
      attr_accessor :created_date

      # @return [Integer] The export error status.
      attr_accessor :export_error_status


      #
      # Mapper for MergedExportError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MergedExportError',
          type: {
            name: 'Composite',
            class_name: 'MergedExportError',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              incoming_object_display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'incomingObjectDisplayName',
                type: {
                  name: 'String'
                }
              },
              incoming_object_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'incomingObjectType',
                type: {
                  name: 'String'
                }
              },
              user_principal_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userPrincipalName',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              attribute_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributeName',
                type: {
                  name: 'String'
                }
              },
              attribute_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributeValue',
                type: {
                  name: 'String'
                }
              },
              time_occurred: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeOccurred',
                type: {
                  name: 'DateTime'
                }
              },
              time_first_occurred: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeFirstOccurred',
                type: {
                  name: 'DateTime'
                }
              },
              cs_object_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'csObjectId',
                type: {
                  name: 'String'
                }
              },
              dn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dn',
                type: {
                  name: 'String'
                }
              },
              incoming_object: {
                client_side_validation: true,
                required: false,
                serialized_name: 'incomingObject',
                type: {
                  name: 'Composite',
                  class_name: 'AssociatedObject'
                }
              },
              existing_object: {
                client_side_validation: true,
                required: false,
                serialized_name: 'existingObject',
                type: {
                  name: 'Composite',
                  class_name: 'AssociatedObject'
                }
              },
              modified_or_removed_attribute_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'modifiedOrRemovedAttributeValue',
                type: {
                  name: 'String'
                }
              },
              run_step_result_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'runStepResultId',
                type: {
                  name: 'String'
                }
              },
              sam_account_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'samAccountName',
                type: {
                  name: 'String'
                }
              },
              server_error_detail: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverErrorDetail',
                type: {
                  name: 'String'
                }
              },
              service_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceId',
                type: {
                  name: 'String'
                }
              },
              service_member_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceMemberId',
                type: {
                  name: 'String'
                }
              },
              merged_entity_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mergedEntityId',
                type: {
                  name: 'String'
                }
              },
              created_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              export_error_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'exportErrorStatus',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
