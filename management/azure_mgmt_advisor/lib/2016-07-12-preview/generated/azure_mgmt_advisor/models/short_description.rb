# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Advisor::Mgmt::V2016_07_12_preview
  module Models
    #
    # A summary of the recommendation.
    #
    class ShortDescription

      include MsRestAzure

      # @return [String] The issue or opportunity identified by the
      # recommendation.
      attr_accessor :problem

      # @return [String] The remediation action suggested by the
      # recommendation.
      attr_accessor :solution


      #
      # Mapper for ShortDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ShortDescription',
          type: {
            name: 'Composite',
            class_name: 'ShortDescription',
            model_properties: {
              problem: {
                client_side_validation: true,
                required: false,
                serialized_name: 'problem',
                type: {
                  name: 'String'
                }
              },
              solution: {
                client_side_validation: true,
                required: false,
                serialized_name: 'solution',
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
