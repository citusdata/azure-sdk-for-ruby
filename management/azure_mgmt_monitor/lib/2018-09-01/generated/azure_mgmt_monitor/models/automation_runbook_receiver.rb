# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_09_01
  module Models
    #
    # The Azure Automation Runbook notification receiver.
    #
    class AutomationRunbookReceiver

      include MsRestAzure

      # @return [String] The Azure automation account Id which holds this
      # runbook and authenticate to Azure resource.
      attr_accessor :automation_account_id

      # @return [String] The name for this runbook.
      attr_accessor :runbook_name

      # @return [String] The resource id for webhook linked to this runbook.
      attr_accessor :webhook_resource_id

      # @return [Boolean] Indicates whether this instance is global runbook.
      attr_accessor :is_global_runbook

      # @return [String] Indicates name of the webhook.
      attr_accessor :name

      # @return [String] The URI where webhooks should be sent.
      attr_accessor :service_uri


      #
      # Mapper for AutomationRunbookReceiver class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutomationRunbookReceiver',
          type: {
            name: 'Composite',
            class_name: 'AutomationRunbookReceiver',
            model_properties: {
              automation_account_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'automationAccountId',
                type: {
                  name: 'String'
                }
              },
              runbook_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'runbookName',
                type: {
                  name: 'String'
                }
              },
              webhook_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'webhookResourceId',
                type: {
                  name: 'String'
                }
              },
              is_global_runbook: {
                client_side_validation: true,
                required: true,
                serialized_name: 'isGlobalRunbook',
                type: {
                  name: 'Boolean'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              service_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceUri',
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
