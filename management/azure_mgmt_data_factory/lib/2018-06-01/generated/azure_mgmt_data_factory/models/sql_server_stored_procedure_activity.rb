# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # SQL stored procedure activity type.
    #
    class SqlServerStoredProcedureActivity < ExecutionActivity

      include MsRestAzure


      def initialize
        @type = "SqlServerStoredProcedure"
      end

      attr_accessor :type

      # @return Stored procedure name. Type: string (or Expression with
      # resultType string).
      attr_accessor :stored_procedure_name

      # @return [Hash{String => StoredProcedureParameter}] Value and type
      # setting for stored procedure parameters. Example: "{Parameter1: {value:
      # "1", type: "int"}}".
      attr_accessor :stored_procedure_parameters


      #
      # Mapper for SqlServerStoredProcedureActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlServerStoredProcedure',
          type: {
            name: 'Composite',
            class_name: 'SqlServerStoredProcedureActivity',
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
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
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
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
                      }
                  }
                }
              },
              user_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserProperty'
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
              linked_service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linkedServiceName',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policy',
                type: {
                  name: 'Composite',
                  class_name: 'ActivityPolicy'
                }
              },
              stored_procedure_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.storedProcedureName',
                type: {
                  name: 'Object'
                }
              },
              stored_procedure_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.storedProcedureParameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StoredProcedureParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StoredProcedureParameter'
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
