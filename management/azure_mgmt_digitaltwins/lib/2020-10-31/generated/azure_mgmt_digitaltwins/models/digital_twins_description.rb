# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DigitalTwins::Mgmt::V2020_10_31
  module Models
    #
    # The description of the DigitalTwins service.
    #
    class DigitalTwinsDescription < DigitalTwinsResource

      include MsRestAzure

      # @return [DateTime] Time when DigitalTwinsInstance was created.
      attr_accessor :created_time

      # @return [DateTime] Time when DigitalTwinsInstance was updated.
      attr_accessor :last_updated_time

      # @return [ProvisioningState] The provisioning state. Possible values
      # include: 'Provisioning', 'Deleting', 'Succeeded', 'Failed', 'Canceled',
      # 'Deleted', 'Warning', 'Suspending', 'Restoring', 'Moving'
      attr_accessor :provisioning_state

      # @return [String] Api endpoint to work with DigitalTwinsInstance.
      attr_accessor :host_name


      #
      # Mapper for DigitalTwinsDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DigitalTwinsDescription',
          type: {
            name: 'Composite',
            class_name: 'DigitalTwinsDescription',
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
                constraints: {
                  Pattern: '^(?!-)[A-Za-z0-9-]{3,63}(?<!-)$'
                },
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
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
              },
              created_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_updated_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastUpdatedTime',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              host_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.hostName',
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
