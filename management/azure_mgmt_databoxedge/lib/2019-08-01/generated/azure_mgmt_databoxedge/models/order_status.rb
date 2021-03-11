# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBoxEdge::Mgmt::V2019_08_01
  module Models
    #
    # Represents a single status change.
    #
    class OrderStatus

      include MsRestAzure

      # @return [OrderState] Status of the order as per the allowed status
      # types. Possible values include: 'Untracked', 'AwaitingFulfilment',
      # 'AwaitingPreparation', 'AwaitingShipment', 'Shipped', 'Arriving',
      # 'Delivered', 'ReplacementRequested', 'LostDevice', 'Declined',
      # 'ReturnInitiated', 'AwaitingReturnShipment', 'ShippedBack',
      # 'CollectedAtMicrosoft'
      attr_accessor :status

      # @return [DateTime] Time of status update.
      attr_accessor :update_date_time

      # @return [String] Comments related to this status change.
      attr_accessor :comments

      # @return [Hash{String => String}] Dictionary to hold generic information
      # which is not stored
      # by the already existing properties
      attr_accessor :additional_order_details


      #
      # Mapper for OrderStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OrderStatus',
          type: {
            name: 'Composite',
            class_name: 'OrderStatus',
            model_properties: {
              status: {
                client_side_validation: true,
                required: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              update_date_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'updateDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              comments: {
                client_side_validation: true,
                required: false,
                serialized_name: 'comments',
                type: {
                  name: 'String'
                }
              },
              additional_order_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'additionalOrderDetails',
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