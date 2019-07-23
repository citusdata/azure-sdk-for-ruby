# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AzureStack::Mgmt::V2017_06_01
  module Models
    #
    # Registration resource
    #
    class RegistrationParameter

      include MsRestAzure

      # @return [String] The token identifying registered Azure Stack
      attr_accessor :registration_token

      # @return [Location] Location of the resource. Possible values include:
      # 'global'
      attr_accessor :location


      #
      # Mapper for RegistrationParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegistrationParameter',
          type: {
            name: 'Composite',
            class_name: 'RegistrationParameter',
            model_properties: {
              registration_token: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.registrationToken',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
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
