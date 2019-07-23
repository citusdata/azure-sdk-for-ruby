# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_03_01_preview
  module Models
    #
    # The definition of data present in the report.
    #
    class ReportConfigDataset

      include MsRestAzure

      # @return [GranularityType] The granularity of rows in the report.
      # Possible values include: 'Daily', 'Monthly'
      attr_accessor :granularity

      # @return [ReportConfigDatasetConfiguration] Has configuration
      # information for the data in the report. The configuration will be
      # ignored if aggregation and grouping are provided.
      attr_accessor :configuration

      # @return [Hash{String => ReportConfigAggregation}] Dictionary of
      # aggregation expression to use in the report. The key of each item in
      # the dictionary is the alias for the aggregated column. Report can have
      # up to 2 aggregation clauses.
      attr_accessor :aggregation

      # @return [Array<ReportConfigGrouping>] Array of group by expression to
      # use in the report. Report can have up to 2 group by clauses.
      attr_accessor :grouping

      # @return [Array<ReportConfigSorting>] Array of order by expression to
      # use in the report.
      attr_accessor :sorting

      # @return [ReportConfigFilter] Has filter expression to use in the
      # report.
      attr_accessor :filter


      #
      # Mapper for ReportConfigDataset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReportConfigDataset',
          type: {
            name: 'Composite',
            class_name: 'ReportConfigDataset',
            model_properties: {
              granularity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'granularity',
                type: {
                  name: 'String'
                }
              },
              configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'configuration',
                type: {
                  name: 'Composite',
                  class_name: 'ReportConfigDatasetConfiguration'
                }
              },
              aggregation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aggregation',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ReportConfigAggregationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ReportConfigAggregation'
                      }
                  }
                }
              },
              grouping: {
                client_side_validation: true,
                required: false,
                serialized_name: 'grouping',
                constraints: {
                  MaxItems: 2
                },
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ReportConfigGroupingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ReportConfigGrouping'
                      }
                  }
                }
              },
              sorting: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sorting',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ReportConfigSortingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ReportConfigSorting'
                      }
                  }
                }
              },
              filter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'filter',
                type: {
                  name: 'Composite',
                  class_name: 'ReportConfigFilter'
                }
              }
            }
          }
        }
      end
    end
  end
end
