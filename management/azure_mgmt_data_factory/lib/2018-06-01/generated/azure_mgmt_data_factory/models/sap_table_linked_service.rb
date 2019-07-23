# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # SAP Table Linked Service.
    #
    class SapTableLinkedService < LinkedService

      include MsRestAzure


      def initialize
        @type = "SapTable"
      end

      attr_accessor :type

      # @return Host name of the SAP instance where the table is located. Type:
      # string (or Expression with resultType string).
      attr_accessor :server

      # @return System number of the SAP system where the table is located.
      # (Usually a two-digit decimal number represented as a string.) Type:
      # string (or Expression with resultType string).
      attr_accessor :system_number

      # @return Client ID of the client on the SAP system where the table is
      # located. (Usually a three-digit decimal number represented as a string)
      # Type: string (or Expression with resultType string).
      attr_accessor :client_id

      # @return Language of the SAP system where the table is located. The
      # default value is EN. Type: string (or Expression with resultType
      # string).
      attr_accessor :language

      # @return SystemID of the SAP system where the table is located. Type:
      # string (or Expression with resultType string).
      attr_accessor :system_id

      # @return Username to access the SAP server where the table is located.
      # Type: string (or Expression with resultType string).
      attr_accessor :user_name

      # @return [SecretBase] Password to access the SAP server where the table
      # is located.
      attr_accessor :password

      # @return The hostname of the SAP Message Server. Type: string (or
      # Expression with resultType string).
      attr_accessor :message_server

      # @return The service name or port number of the Message Server. Type:
      # string (or Expression with resultType string).
      attr_accessor :message_server_service

      # @return SNC activation indicator to access the SAP server where the
      # table is located. Must be either 0 (off) or 1 (on). Type: string (or
      # Expression with resultType string).
      attr_accessor :snc_mode

      # @return Initiator's SNC name to access the SAP server where the table
      # is located. Type: string (or Expression with resultType string).
      attr_accessor :snc_my_name

      # @return Communication partner's SNC name to access the SAP server where
      # the table is located. Type: string (or Expression with resultType
      # string).
      attr_accessor :snc_partner_name

      # @return External security product's library to access the SAP server
      # where the table is located. Type: string (or Expression with resultType
      # string).
      attr_accessor :snc_library_path

      # @return SNC Quality of Protection. Allowed value include: 1, 2, 3, 8,
      # 9. Type: string (or Expression with resultType string).
      attr_accessor :snc_qop

      # @return The Logon Group for the SAP System. Type: string (or Expression
      # with resultType string).
      attr_accessor :logon_group

      # @return The encrypted credential used for authentication. Credentials
      # are encrypted using the integration runtime credential manager. Type:
      # string (or Expression with resultType string).
      attr_accessor :encrypted_credential


      #
      # Mapper for SapTableLinkedService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SapTable',
          type: {
            name: 'Composite',
            class_name: 'SapTableLinkedService',
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
                required: false,
                serialized_name: 'typeProperties.server',
                type: {
                  name: 'Object'
                }
              },
              system_number: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.systemNumber',
                type: {
                  name: 'Object'
                }
              },
              client_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.clientId',
                type: {
                  name: 'Object'
                }
              },
              language: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.language',
                type: {
                  name: 'Object'
                }
              },
              system_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.systemId',
                type: {
                  name: 'Object'
                }
              },
              user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.userName',
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
              message_server: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.messageServer',
                type: {
                  name: 'Object'
                }
              },
              message_server_service: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.messageServerService',
                type: {
                  name: 'Object'
                }
              },
              snc_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.sncMode',
                type: {
                  name: 'Object'
                }
              },
              snc_my_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.sncMyName',
                type: {
                  name: 'Object'
                }
              },
              snc_partner_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.sncPartnerName',
                type: {
                  name: 'Object'
                }
              },
              snc_library_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.sncLibraryPath',
                type: {
                  name: 'Object'
                }
              },
              snc_qop: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.sncQop',
                type: {
                  name: 'Object'
                }
              },
              logon_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.logonGroup',
                type: {
                  name: 'Object'
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
