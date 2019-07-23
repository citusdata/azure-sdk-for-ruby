# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2018_07_12_preview
  module Models
    #
    # The response body returned for a request to Bot Service Management to
    # check availability of a bot name.
    #
    class CheckNameAvailabilityResponseBody

      include MsRestAzure

      # @return [Boolean] indicates if the bot name is valid.
      attr_accessor :valid

      # @return [String] additional message from the bot management api showing
      # why a bot name is not available
      attr_accessor :message


      #
      # Mapper for CheckNameAvailabilityResponseBody class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckNameAvailabilityResponseBody',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityResponseBody',
            model_properties: {
              valid: {
                client_side_validation: true,
                required: false,
                serialized_name: 'valid',
                type: {
                  name: 'Boolean'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
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
