# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Mapping data flow.
    #
    class MappingDataFlow < DataFlow

      include MsRestAzure


      def initialize
        @type = "MappingDataFlow"
      end

      attr_accessor :type

      # @return [Array<DataFlowSource>] List of sources in data flow.
      attr_accessor :sources

      # @return [Array<DataFlowSink>] List of sinks in data flow.
      attr_accessor :sinks

      # @return [Array<Transformation>] List of transformations in data flow.
      attr_accessor :transformations

      # @return [String] DataFlow script.
      attr_accessor :script


      #
      # Mapper for MappingDataFlow class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MappingDataFlow',
          type: {
            name: 'Composite',
            class_name: 'MappingDataFlow',
            model_properties: {
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              annotations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'annotations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              folder: {
                client_side_validation: true,
                required: false,
                serialized_name: 'folder',
                type: {
                  name: 'Composite',
                  class_name: 'DataFlowFolder'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              sources: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.sources',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataFlowSourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataFlowSource'
                      }
                  }
                }
              },
              sinks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.sinks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataFlowSinkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataFlowSink'
                      }
                  }
                }
              },
              transformations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.transformations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TransformationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Transformation'
                      }
                  }
                }
              },
              script: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.script',
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
