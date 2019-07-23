# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2018_07_12_preview
  module Models
    #
    # Skype channel definition
    #
    class SkypeChannel < Channel

      include MsRestAzure


      def initialize
        @channelName = "SkypeChannel"
      end

      attr_accessor :channelName

      # @return [SkypeChannelProperties] The set of properties specific to
      # Skype channel resource
      attr_accessor :properties


      #
      # Mapper for SkypeChannel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SkypeChannel',
          type: {
            name: 'Composite',
            class_name: 'SkypeChannel',
            model_properties: {
              channelName: {
                client_side_validation: true,
                required: true,
                serialized_name: 'channelName',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'SkypeChannelProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
