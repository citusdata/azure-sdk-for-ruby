# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_06_01_preview
  module Models
    #
    # The List operation response, that contains the restorable SQL containers
    # and their properties.
    #
    class RestorableSqlContainersListResult

      include MsRestAzure

      # @return [Array<RestorableSqlContainerGetResult>] List of restorable SQL
      # containers and their properties.
      attr_accessor :value


      #
      # Mapper for RestorableSqlContainersListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RestorableSqlContainersListResult',
          type: {
            name: 'Composite',
            class_name: 'RestorableSqlContainersListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RestorableSqlContainerGetResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RestorableSqlContainerGetResult'
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