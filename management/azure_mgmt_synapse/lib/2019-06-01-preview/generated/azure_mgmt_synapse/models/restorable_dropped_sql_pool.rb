# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # A restorable dropped Sql pool
    #
    class RestorableDroppedSqlPool < ProxyResource

      include MsRestAzure

      # @return [String] The geo-location where the resource lives
      attr_accessor :location

      # @return [String] The name of the database
      attr_accessor :database_name

      # @return [String] The edition of the database
      attr_accessor :edition

      # @return [String] The max size in bytes of the database
      attr_accessor :max_size_bytes

      # @return [String] The service level objective name of the database
      attr_accessor :service_level_objective

      # @return [String] The elastic pool name of the database
      attr_accessor :elastic_pool_name

      # @return [DateTime] The creation date of the database (ISO8601 format)
      attr_accessor :creation_date

      # @return [DateTime] The deletion date of the database (ISO8601 format)
      attr_accessor :deletion_date

      # @return [DateTime] The earliest restore date of the database (ISO8601
      # format)
      attr_accessor :earliest_restore_date


      #
      # Mapper for RestorableDroppedSqlPool class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RestorableDroppedSqlPool',
          type: {
            name: 'Composite',
            class_name: 'RestorableDroppedSqlPool',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              database_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseName',
                type: {
                  name: 'String'
                }
              },
              edition: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.edition',
                type: {
                  name: 'String'
                }
              },
              max_size_bytes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.maxSizeBytes',
                type: {
                  name: 'String'
                }
              },
              service_level_objective: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceLevelObjective',
                type: {
                  name: 'String'
                }
              },
              elastic_pool_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.elasticPoolName',
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationDate',
                type: {
                  name: 'DateTime'
                }
              },
              deletion_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.deletionDate',
                type: {
                  name: 'DateTime'
                }
              },
              earliest_restore_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.earliestRestoreDate',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end