# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Represents health evaluation for a node, containing information about the
    # data and the algorithm used by health store to evaluate health. The
    # evaluation is returned only when the aggregated health state is either
    # Error or Warning.
    #
    class NodeHealthEvaluation < HealthEvaluation

      include MsRestAzure


      def initialize
        @Kind = "Node"
      end

      attr_accessor :Kind

      # @return [String] The name of a Service Fabric node.
      attr_accessor :node_name

      # @return [Array<HealthEvaluationWrapper>] List of unhealthy evaluations
      # that led to the current aggregated health state of the node. The types
      # of the unhealthy evaluations can be EventHealthEvaluation.
      attr_accessor :unhealthy_evaluations


      #
      # Mapper for NodeHealthEvaluation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Node',
          type: {
            name: 'Composite',
            class_name: 'NodeHealthEvaluation',
            model_properties: {
              aggregated_health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AggregatedHealthState',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Description',
                type: {
                  name: 'String'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              node_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeName',
                type: {
                  name: 'String'
                }
              },
              unhealthy_evaluations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UnhealthyEvaluations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthEvaluationWrapperElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthEvaluationWrapper'
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