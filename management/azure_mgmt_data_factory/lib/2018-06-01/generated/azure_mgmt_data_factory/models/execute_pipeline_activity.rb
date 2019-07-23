# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Execute pipeline activity.
    #
    class ExecutePipelineActivity < ControlActivity

      include MsRestAzure


      def initialize
        @type = "ExecutePipeline"
      end

      attr_accessor :type

      # @return [PipelineReference] Pipeline reference.
      attr_accessor :pipeline

      # @return Pipeline parameters.
      attr_accessor :parameters

      # @return [Boolean] Defines whether activity execution will wait for the
      # dependent pipeline execution to finish. Default is false.
      attr_accessor :wait_on_completion


      #
      # Mapper for ExecutePipelineActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExecutePipeline',
          type: {
            name: 'Composite',
            class_name: 'ExecutePipelineActivity',
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
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
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
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
                      }
                  }
                }
              },
              user_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserProperty'
                      }
                  }
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
              pipeline: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.pipeline',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'PipelineReference'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.parameters',
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
              wait_on_completion: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.waitOnCompletion',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
