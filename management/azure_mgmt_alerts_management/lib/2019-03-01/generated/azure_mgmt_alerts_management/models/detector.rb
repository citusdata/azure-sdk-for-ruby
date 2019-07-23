# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2019_03_01
  module Models
    #
    # The detector information. By default this is not populated, unless it's
    # specified in expandDetector
    #
    class Detector

      include MsRestAzure

      # @return [String] The detector id.
      attr_accessor :id

      # @return The detector's parameters.'
      attr_accessor :parameters

      # @return [String] The Smart Detector name. By default this is not
      # populated, unless it's specified in expandDetector
      attr_accessor :name

      # @return [String] The Smart Detector description. By default this is not
      # populated, unless it's specified in expandDetector
      attr_accessor :description

      # @return [Array<String>] The Smart Detector supported resource types. By
      # default this is not populated, unless it's specified in expandDetector
      attr_accessor :supported_resource_types

      # @return [Array<String>] The Smart Detector image path. By default this
      # is not populated, unless it's specified in expandDetector
      attr_accessor :image_paths


      #
      # Mapper for Detector class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Detector',
          type: {
            name: 'Composite',
            class_name: 'Detector',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              supported_resource_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'supportedResourceTypes',
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
              image_paths: {
                client_side_validation: true,
                required: false,
                serialized_name: 'imagePaths',
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
              }
            }
          }
        }
      end
    end
  end
end
