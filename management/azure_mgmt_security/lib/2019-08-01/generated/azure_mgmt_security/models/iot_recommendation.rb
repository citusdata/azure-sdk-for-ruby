# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2019_08_01
  module Models
    #
    # IoT recommendation
    #
    class IotRecommendation < Resource

      include MsRestAzure

      # @return [String] Identifier of the device being reported on
      attr_accessor :device_id

      # @return [String] The type name of the recommendation
      attr_accessor :recommendation_type

      # @return [String] The discovery time of the recommendation
      attr_accessor :discovered_time_utc

      # @return A bag of fields which extends the recommendation information
      attr_accessor :recommendation_additional_data


      #
      # Mapper for IotRecommendation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IotRecommendation',
          type: {
            name: 'Composite',
            class_name: 'IotRecommendation',
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
              device_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.deviceId',
                type: {
                  name: 'String'
                }
              },
              recommendation_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.recommendationType',
                type: {
                  name: 'String'
                }
              },
              discovered_time_utc: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.discoveredTimeUtc',
                type: {
                  name: 'String'
                }
              },
              recommendation_additional_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.recommendationAdditionalData',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
