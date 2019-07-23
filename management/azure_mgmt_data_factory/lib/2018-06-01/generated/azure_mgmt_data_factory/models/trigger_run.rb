# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Trigger runs.
    #
    class TriggerRun

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [String] Trigger run id.
      attr_accessor :trigger_run_id

      # @return [String] Trigger name.
      attr_accessor :trigger_name

      # @return [String] Trigger type.
      attr_accessor :trigger_type

      # @return [DateTime] Trigger run start time.
      attr_accessor :trigger_run_timestamp

      # @return [TriggerRunStatus] Trigger run status. Possible values include:
      # 'Succeeded', 'Failed', 'Inprogress'
      attr_accessor :status

      # @return [String] Trigger error message.
      attr_accessor :message

      # @return [Hash{String => String}] List of property name and value
      # related to trigger run. Name, value pair depends on type of trigger.
      attr_accessor :properties

      # @return [Hash{String => String}] List of pipeline name and run Id
      # triggered by the trigger run.
      attr_accessor :triggered_pipelines


      #
      # Mapper for TriggerRun class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TriggerRun',
          type: {
            name: 'Composite',
            class_name: 'TriggerRun',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              trigger_run_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'triggerRunId',
                type: {
                  name: 'String'
                }
              },
              trigger_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'triggerName',
                type: {
                  name: 'String'
                }
              },
              trigger_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'triggerType',
                type: {
                  name: 'String'
                }
              },
              trigger_run_timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'triggerRunTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              triggered_pipelines: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'triggeredPipelines',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
