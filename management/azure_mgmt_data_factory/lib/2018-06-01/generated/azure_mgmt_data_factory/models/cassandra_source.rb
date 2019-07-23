# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity source for a Cassandra database.
    #
    class CassandraSource < CopySource

      include MsRestAzure


      def initialize
        @type = "CassandraSource"
      end

      attr_accessor :type

      # @return Database query. Should be a SQL-92 query expression or
      # Cassandra Query Language (CQL) command. Type: string (or Expression
      # with resultType string).
      attr_accessor :query

      # @return [CassandraSourceReadConsistencyLevels] The consistency level
      # specifies how many Cassandra servers must respond to a read request
      # before returning data to the client application. Cassandra checks the
      # specified number of Cassandra servers for data to satisfy the read
      # request. Must be one of cassandraSourceReadConsistencyLevels. The
      # default value is 'ONE'. It is case-insensitive. Possible values
      # include: 'ALL', 'EACH_QUORUM', 'QUORUM', 'LOCAL_QUORUM', 'ONE', 'TWO',
      # 'THREE', 'LOCAL_ONE', 'SERIAL', 'LOCAL_SERIAL'
      attr_accessor :consistency_level


      #
      # Mapper for CassandraSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CassandraSource',
          type: {
            name: 'Composite',
            class_name: 'CassandraSource',
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
              source_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryCount',
                type: {
                  name: 'Object'
                }
              },
              source_retry_wait: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryWait',
                type: {
                  name: 'Object'
                }
              },
              max_concurrent_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxConcurrentConnections',
                type: {
                  name: 'Object'
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
              query: {
                client_side_validation: true,
                required: false,
                serialized_name: 'query',
                type: {
                  name: 'Object'
                }
              },
              consistency_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'consistencyLevel',
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
