# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Linked service for DB2 data source.
    #
    class Db2LinkedService < LinkedService

      include MsRestAzure


      def initialize
        @type = "Db2"
      end

      attr_accessor :type

      # @return Server name for connection. Type: string (or Expression with
      # resultType string).
      attr_accessor :server

      # @return Database name for connection. Type: string (or Expression with
      # resultType string).
      attr_accessor :database

      # @return [Db2AuthenticationType] AuthenticationType to be used for
      # connection. Possible values include: 'Basic'
      attr_accessor :authentication_type

      # @return Username for authentication. Type: string (or Expression with
      # resultType string).
      attr_accessor :username

      # @return [SecretBase] Password for authentication.
      attr_accessor :password

      # @return The encrypted credential used for authentication. Credentials
      # are encrypted using the integration runtime credential manager. Type:
      # string (or Expression with resultType string).
      attr_accessor :encrypted_credential


      #
      # Mapper for Db2LinkedService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Db2',
          type: {
            name: 'Composite',
            class_name: 'Db2LinkedService',
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
              connect_via: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectVia',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeReference'
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
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              server: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.server',
                type: {
                  name: 'Object'
                }
              },
              database: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.database',
                type: {
                  name: 'Object'
                }
              },
              authentication_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.authenticationType',
                type: {
                  name: 'String'
                }
              },
              username: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.username',
                type: {
                  name: 'Object'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.password',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'SecretBase',
                  class_name: 'SecretBase'
                }
              },
              encrypted_credential: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.encryptedCredential',
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
