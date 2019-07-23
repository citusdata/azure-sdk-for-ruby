# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_06_01
  module Models
    #
    # Describes network resource usage.
    #
    class Usage

      include MsRestAzure

      # @return [String] Resource identifier.
      attr_accessor :id

      # @return [String] An enum describing the unit of measurement. Default
      # value: 'Count' .
      attr_accessor :unit

      # @return [Integer] The current value of the usage.
      attr_accessor :current_value

      # @return [Integer] The limit of usage.
      attr_accessor :limit

      # @return [UsageName] The name of the type of usage.
      attr_accessor :name


      #
      # Mapper for Usage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Usage',
          type: {
            name: 'Composite',
            class_name: 'Usage',
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
              unit: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'unit',
                default_value: 'Count',
                type: {
                  name: 'String'
                }
              },
              current_value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'currentValue',
                type: {
                  name: 'Number'
                }
              },
              limit: {
                client_side_validation: true,
                required: true,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'UsageName'
                }
              }
            }
          }
        }
      end
    end
  end
end
