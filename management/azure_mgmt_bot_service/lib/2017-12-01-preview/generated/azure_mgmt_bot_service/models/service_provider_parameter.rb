# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2017_12_01_preview
  module Models
    #
    # Extra Parameters specific to each Service Provider
    #
    class ServiceProviderParameter

      include MsRestAzure

      # @return [String] Name of the Service Provider
      attr_accessor :name

      # @return [String] Type of the Service Provider
      attr_accessor :type

      # @return [String] Display Name of the Service Provider
      attr_accessor :display_name

      # @return [String] Description of the Service Provider
      attr_accessor :description

      # @return [String] Help Url for the  Service Provider
      attr_accessor :help_url

      # @return [String] Default Name for the Service Provider
      attr_accessor :default


      #
      # Mapper for ServiceProviderParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceProviderParameter',
          type: {
            name: 'Composite',
            class_name: 'ServiceProviderParameter',
            model_properties: {
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
              display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              help_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'helpUrl',
                type: {
                  name: 'String'
                }
              },
              default: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'default',
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
