# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V2016_10_01
  module Models
    #
    # The SAS definition update parameters.
    #
    class SasDefinitionUpdateParameters

      include MsRestAzure

      # @return [Hash{String => String}] Sas definition update metadata in the
      # form of key-value pairs.
      attr_accessor :parameters

      # @return [SasDefinitionAttributes] The attributes of the SAS definition.
      attr_accessor :sas_definition_attributes

      # @return [Hash{String => String}] Application specific metadata in the
      # form of key-value pairs.
      attr_accessor :tags


      #
      # Mapper for SasDefinitionUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SasDefinitionUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'SasDefinitionUpdateParameters',
            model_properties: {
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
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
              sas_definition_attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'SasDefinitionAttributes'
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
              }
            }
          }
        }
      end
    end
  end
end
