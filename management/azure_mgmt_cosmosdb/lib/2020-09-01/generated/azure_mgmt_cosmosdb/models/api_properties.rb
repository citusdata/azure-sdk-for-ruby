# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_09_01
  module Models
    #
    # Model object.
    #
    #
    class ApiProperties

      include MsRestAzure

      # @return [ServerVersion] Describes the ServerVersion of an a MongoDB
      # account. Possible values include: '3.2', '3.6'
      attr_accessor :server_version


      #
      # Mapper for ApiProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiProperties',
          type: {
            name: 'Composite',
            class_name: 'ApiProperties',
            model_properties: {
              server_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverVersion',
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