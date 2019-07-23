# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2018_05_05_preview
  module Models
    #
    # Properties of the smartGroup modification item.
    #
    class SmartGroupModificationProperties

      include MsRestAzure

      # @return [String] Unique Id of the smartGroup for which the history is
      # being retrieved
      attr_accessor :smart_group_id

      # @return [Array<SmartGroupModificationItem>] Modification details
      attr_accessor :modifications

      # @return [String] URL to fetch the next set of results.
      attr_accessor :next_link


      #
      # Mapper for SmartGroupModificationProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'smartGroupModificationProperties',
          type: {
            name: 'Composite',
            class_name: 'SmartGroupModificationProperties',
            model_properties: {
              smart_group_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'smartGroupId',
                type: {
                  name: 'String'
                }
              },
              modifications: {
                client_side_validation: true,
                required: false,
                serialized_name: 'modifications',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SmartGroupModificationItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SmartGroupModificationItem'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextLink',
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
