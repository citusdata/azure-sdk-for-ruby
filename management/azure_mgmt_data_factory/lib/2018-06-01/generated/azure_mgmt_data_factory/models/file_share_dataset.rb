# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # An on-premises file system dataset.
    #
    class FileShareDataset < Dataset

      include MsRestAzure


      def initialize
        @type = "FileShare"
      end

      attr_accessor :type

      # @return The path of the on-premises file system. Type: string (or
      # Expression with resultType string).
      attr_accessor :folder_path

      # @return The name of the on-premises file system. Type: string (or
      # Expression with resultType string).
      attr_accessor :file_name

      # @return The start of file's modified datetime. Type: string (or
      # Expression with resultType string).
      attr_accessor :modified_datetime_start

      # @return The end of file's modified datetime. Type: string (or
      # Expression with resultType string).
      attr_accessor :modified_datetime_end

      # @return [DatasetStorageFormat] The format of the files.
      attr_accessor :format

      # @return Specify a filter to be used to select a subset of files in the
      # folderPath rather than all files. Type: string (or Expression with
      # resultType string).
      attr_accessor :file_filter

      # @return [DatasetCompression] The data compression method used for the
      # file system.
      attr_accessor :compression


      #
      # Mapper for FileShareDataset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FileShare',
          type: {
            name: 'Composite',
            class_name: 'FileShareDataset',
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
              folder_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.folderPath',
                type: {
                  name: 'Object'
                }
              },
              file_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.fileName',
                type: {
                  name: 'Object'
                }
              },
              modified_datetime_start: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.modifiedDatetimeStart',
                type: {
                  name: 'Object'
                }
              },
              modified_datetime_end: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.modifiedDatetimeEnd',
                type: {
                  name: 'Object'
                }
              },
              format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.format',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'DatasetStorageFormat',
                  class_name: 'DatasetStorageFormat'
                }
              },
              file_filter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.fileFilter',
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
              }
            }
          }
        }
      end
    end
  end
end
