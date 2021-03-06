# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # A class that describes the reason for a validation failure.
    #
    class VnetValidationFailureDetails < ProxyOnlyResource

      include MsRestAzure

      # @return [Boolean] A flag describing whether or not validation failed.
      attr_accessor :failed

      # @return [Array<VnetValidationTestFailure>] A list of tests that failed
      # in the validation.
      attr_accessor :failed_tests


      #
      # Mapper for VnetValidationFailureDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VnetValidationFailureDetails',
          type: {
            name: 'Composite',
            class_name: 'VnetValidationFailureDetails',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              failed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.failed',
                type: {
                  name: 'Boolean'
                }
              },
              failed_tests: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.failedTests',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VnetValidationTestFailureElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VnetValidationTestFailure'
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
