# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The object entry in a change that is not re-imported.
    #
    class ChangeNotReimportedEntry

      include MsRestAzure

      # @return [String] The anchor.
      attr_accessor :anchor

      # @return [String] The parent anchor.
      attr_accessor :parent_anchor

      # @return [String] The primary object class.
      attr_accessor :primary_object_class

      # @return [Array<String>] The list of object classes.
      attr_accessor :object_classes

      # @return [Array<AttributeDelta>] The delta attributes for distinguished
      # names.
      attr_accessor :dn_attributes

      # @return [Array<AttributeDelta>] The attributes.
      attr_accessor :attributes

      # @return [String] The distinguished name.
      attr_accessor :dn


      #
      # Mapper for ChangeNotReimportedEntry class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChangeNotReimportedEntry',
          type: {
            name: 'Composite',
            class_name: 'ChangeNotReimportedEntry',
            model_properties: {
              anchor: {
                client_side_validation: true,
                required: false,
                serialized_name: 'anchor',
                type: {
                  name: 'String'
                }
              },
              parent_anchor: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parentAnchor',
                type: {
                  name: 'String'
                }
              },
              primary_object_class: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryObjectClass',
                type: {
                  name: 'String'
                }
              },
              object_classes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'objectClasses',
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
              dn_attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dnAttributes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AttributeDeltaElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AttributeDelta'
                      }
                  }
                }
              },
              attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AttributeDeltaElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AttributeDelta'
                      }
                  }
                }
              },
              dn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dn',
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
