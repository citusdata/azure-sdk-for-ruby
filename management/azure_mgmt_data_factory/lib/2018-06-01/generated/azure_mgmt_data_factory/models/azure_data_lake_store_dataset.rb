# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Azure Data Lake Store dataset.
    #
    class AzureDataLakeStoreDataset < Dataset

      include MsRestAzure


      def initialize
        @type = "AzureDataLakeStoreFile"
      end

      attr_accessor :type

      # @return Path to the folder in the Azure Data Lake Store. Type: string
      # (or Expression with resultType string).
      attr_accessor :folder_path

      # @return The name of the file in the Azure Data Lake Store. Type: string
      # (or Expression with resultType string).
      attr_accessor :file_name

      # @return [DatasetStorageFormat] The format of the Data Lake Store.
      attr_accessor :format

      # @return [DatasetCompression] The data compression method used for the
      # item(s) in the Azure Data Lake Store.
      attr_accessor :compression


      #
      # Mapper for AzureDataLakeStoreDataset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureDataLakeStoreFile',
          type: {
            name: 'Composite',
            class_name: 'AzureDataLakeStoreDataset',
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
