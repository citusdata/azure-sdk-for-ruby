# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Definition of a single variable for a Pipeline.
    #
    class VariableSpecification

      include MsRestAzure

      # @return [VariableType] Variable type. Possible values include:
      # 'String', 'Bool', 'Array'
      attr_accessor :type

      # @return Default value of variable.
      attr_accessor :default_value


      #
      # Mapper for VariableSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VariableSpecification',
          type: {
            name: 'Composite',
            class_name: 'VariableSpecification',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              default_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultValue',
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
