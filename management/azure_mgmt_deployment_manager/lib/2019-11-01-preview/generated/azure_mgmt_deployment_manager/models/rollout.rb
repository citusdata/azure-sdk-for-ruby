# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2019_11_01_preview
  module Models
    #
    # Defines the rollout.
    #
    class Rollout < TrackedResource

      include MsRestAzure

      # @return [Identity] Identity for the resource.
      attr_accessor :identity

      # @return [String] The version of the build being deployed.
      attr_accessor :build_version

      # @return [String] The reference to the artifact source resource Id where
      # the payload is located.
      attr_accessor :artifact_source_id

      # @return [String] The resource Id of the service topology from which
      # service units are being referenced in step groups to be deployed.
      attr_accessor :target_service_topology_id

      # @return [Array<StepGroup>] The list of step groups that define the
      # orchestration.
      attr_accessor :step_groups

      # @return [String] The current status of the rollout.
      attr_accessor :status

      # @return [Integer] The cardinal count of total number of retries
      # performed on the rollout at a given time.
      attr_accessor :total_retry_attempts

      # @return [RolloutOperationInfo] Operational information of the rollout.
      attr_accessor :operation_info

      # @return [Array<Service>] The detailed information on the services being
      # deployed.
      attr_accessor :services


      #
      # Mapper for Rollout class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Rollout',
          type: {
            name: 'Composite',
            class_name: 'Rollout',
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
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'Identity'
                }
              },
              build_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.buildVersion',
                type: {
                  name: 'String'
                }
              },
              artifact_source_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.artifactSourceId',
                type: {
                  name: 'String'
                }
              },
              target_service_topology_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.targetServiceTopologyId',
                type: {
                  name: 'String'
                }
              },
              step_groups: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.stepGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StepGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StepGroup'
                      }
                  }
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              total_retry_attempts: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.totalRetryAttempts',
                type: {
                  name: 'Number'
                }
              },
              operation_info: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.operationInfo',
                type: {
                  name: 'Composite',
                  class_name: 'RolloutOperationInfo'
                }
              },
              services: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.services',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Service'
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