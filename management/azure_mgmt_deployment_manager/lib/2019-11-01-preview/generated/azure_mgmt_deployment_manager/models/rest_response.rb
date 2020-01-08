# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2019_11_01_preview
  module Models
    #
    # The properties that make up the expected REST response
    #
    class RestResponse

      include MsRestAzure

      # @return [Array<String>] The HTTP status codes expected in a successful
      # health check response. The response is expected to match one of the
      # given status codes. If no expected status codes are provided, default
      # expected status code is 200 OK.
      attr_accessor :success_status_codes

      # @return [RestResponseRegex] The regular expressions to match the
      # response content with.
      attr_accessor :regex


      #
      # Mapper for RestResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RestResponse',
          type: {
            name: 'Composite',
            class_name: 'RestResponse',
            model_properties: {
              success_status_codes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'successStatusCodes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              regex: {
                client_side_validation: true,
                required: false,
                serialized_name: 'regex',
                type: {
                  name: 'Composite',
                  class_name: 'RestResponseRegex'
                }
              }
            }
          }
        }
      end
    end
  end
end