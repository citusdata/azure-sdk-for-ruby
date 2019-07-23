# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # Managed integration runtime, including managed elastic and managed
    # dedicated integration runtimes.
    #
    class ManagedIntegrationRuntime < IntegrationRuntime

      include MsRestAzure


      def initialize
        @type = "Managed"
      end

      attr_accessor :type

      # @return [IntegrationRuntimeState] Integration runtime state, only valid
      # for managed dedicated integration runtime. Possible values include:
      # 'Initial', 'Stopped', 'Started', 'Starting', 'Stopping',
      # 'NeedRegistration', 'Online', 'Limited', 'Offline'
      attr_accessor :state

      # @return [IntegrationRuntimeComputeProperties] The compute resource for
      # managed integration runtime.
      attr_accessor :compute_properties

      # @return [IntegrationRuntimeSsisProperties] SSIS properties for managed
      # integration runtime.
      attr_accessor :ssis_properties


      #
      # Mapper for ManagedIntegrationRuntime class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Managed',
          type: {
            name: 'Composite',
            class_name: 'ManagedIntegrationRuntime',
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
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
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
                  name: 'String'
                }
              },
              compute_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.computeProperties',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeComputeProperties'
                }
              },
              ssis_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.ssisProperties',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeSsisProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
