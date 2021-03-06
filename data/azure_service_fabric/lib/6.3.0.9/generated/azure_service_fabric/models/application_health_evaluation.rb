# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Represents health evaluation for an application, containing information
    # about the data and the algorithm used by the health store to evaluate
    # health.
    #
    class ApplicationHealthEvaluation < HealthEvaluation

      include MsRestAzure


      def initialize
        @Kind = "Application"
      end

      attr_accessor :Kind

      # @return [String] The name of the application, including the 'fabric:'
      # URI scheme.
      attr_accessor :application_name

      # @return [Array<HealthEvaluationWrapper>] List of unhealthy evaluations
      # that led to the current aggregated health state of the application. The
      # types of the unhealthy evaluations can be
      # DeployedApplicationsHealthEvaluation, ServicesHealthEvaluation or
      # EventHealthEvaluation.
      attr_accessor :unhealthy_evaluations


      #
      # Mapper for ApplicationHealthEvaluation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Application',
          type: {
            name: 'Composite',
            class_name: 'ApplicationHealthEvaluation',
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
              application_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationName',
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
