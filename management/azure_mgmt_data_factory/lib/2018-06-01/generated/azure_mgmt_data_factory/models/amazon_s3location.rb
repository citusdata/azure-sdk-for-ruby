# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # The location of amazon S3 dataset.
    #
    class AmazonS3Location < DatasetLocation

      include MsRestAzure

      # @return Specify the bucketName of amazon S3. Type: string (or
      # Expression with resultType string)
      attr_accessor :bucket_name

      # @return Specify the version of amazon S3. Type: string (or Expression
      # with resultType string).
      attr_accessor :version


      #
      # Mapper for AmazonS3Location class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AmazonS3Location',
          type: {
            name: 'Composite',
            class_name: 'AmazonS3Location',
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
                serialized_name: 'folderPath',
                type: {
                  name: 'Object'
                }
              },
              file_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fileName',
                type: {
                  name: 'Object'
                }
              },
              bucket_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bucketName',
                type: {
                  name: 'Object'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
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
