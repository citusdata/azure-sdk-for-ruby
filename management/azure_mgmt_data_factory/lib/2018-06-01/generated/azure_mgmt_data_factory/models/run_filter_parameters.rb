# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Query parameters for listing runs.
    #
    class RunFilterParameters

      include MsRestAzure

      # @return [String] The continuation token for getting the next page of
      # results. Null for first page.
      attr_accessor :continuation_token

      # @return [DateTime] The time at or after which the run event was updated
      # in 'ISO 8601' format.
      attr_accessor :last_updated_after

      # @return [DateTime] The time at or before which the run event was
      # updated in 'ISO 8601' format.
      attr_accessor :last_updated_before

      # @return [Array<RunQueryFilter>] List of filters.
      attr_accessor :filters

      # @return [Array<RunQueryOrderBy>] List of OrderBy option.
      attr_accessor :order_by


      #
      # Mapper for RunFilterParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RunFilterParameters',
          type: {
            name: 'Composite',
            class_name: 'RunFilterParameters',
            model_properties: {
              continuation_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'continuationToken',
                type: {
                  name: 'String'
                }
              },
              last_updated_after: {
                client_side_validation: true,
                required: true,
                serialized_name: 'lastUpdatedAfter',
                type: {
                  name: 'DateTime'
                }
              },
              last_updated_before: {
                client_side_validation: true,
                required: true,
                serialized_name: 'lastUpdatedBefore',
                type: {
                  name: 'DateTime'
                }
              },
              filters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'filters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RunQueryFilterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RunQueryFilter'
                      }
                  }
                }
              },
              order_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'orderBy',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RunQueryOrderByElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RunQueryOrderBy'
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
