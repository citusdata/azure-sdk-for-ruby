# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # A collection of environment variables to set.
    #
    class EnvironmentVariable

      include MsRestAzure

      # @return [String] The name of the environment variable.
      attr_accessor :name

      # @return [String] The value of the environment variable.
      attr_accessor :value


      #
      # Mapper for EnvironmentVariable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnvironmentVariable',
          type: {
            name: 'Composite',
            class_name: 'EnvironmentVariable',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
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
