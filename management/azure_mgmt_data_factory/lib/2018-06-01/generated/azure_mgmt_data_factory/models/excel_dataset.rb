# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Excel dataset.
    #
    class ExcelDataset < Dataset

      include MsRestAzure


      def initialize
        @type = "Excel"
      end

      attr_accessor :type

      # @return [DatasetLocation] The location of the excel storage.
      attr_accessor :location

      # @return The sheet of excel file. Type: string (or Expression with
      # resultType string).
      attr_accessor :sheet_name

      # @return The partial data of one sheet. Type: string (or Expression with
      # resultType string).
      attr_accessor :range

      # @return When used as input, treat the first row of data as headers.
      # When used as output,write the headers into the output as the first row
      # of data. The default value is false. Type: boolean (or Expression with
      # resultType boolean).
      attr_accessor :first_row_as_header

      # @return [DatasetCompression] The data compression method used for the
      # json dataset.
      attr_accessor :compression

      # @return The null value string. Type: string (or Expression with
      # resultType string).
      attr_accessor :null_value


      #
      # Mapper for ExcelDataset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Excel',
          type: {
            name: 'Composite',
            class_name: 'ExcelDataset',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              structure: {
                client_side_validation: true,
                required: false,
                serialized_name: 'structure',
                type: {
                  name: 'Object'
                }
              },
              schema: {
                client_side_validation: true,
                required: false,
                serialized_name: 'schema',
                type: {
                  name: 'Object'
                }
              },
              linked_service_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'linkedServiceName',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterSpecification'
                      }
                  }
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
                  class_name: 'DatasetFolder'
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.location',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'DatasetLocation',
                  class_name: 'DatasetLocation'
                }
              },
              sheet_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.sheetName',
                type: {
                  name: 'Object'
                }
              },
              range: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.range',
                type: {
                  name: 'Object'
                }
              },
              first_row_as_header: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.firstRowAsHeader',
                type: {
                  name: 'Object'
                }
              },
              compression: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.compression',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'DatasetCompression',
                  class_name: 'DatasetCompression'
                }
              },
              null_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.nullValue',
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