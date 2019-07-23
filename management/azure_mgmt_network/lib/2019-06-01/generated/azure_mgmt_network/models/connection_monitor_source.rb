# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_06_01
  module Models
    #
    # Describes the source of connection monitor.
    #
    class ConnectionMonitorSource

      include MsRestAzure

      # @return [String] The ID of the resource used as the source by
      # connection monitor.
      attr_accessor :resource_id

      # @return [Integer] The source port used by connection monitor.
      attr_accessor :port


      #
      # Mapper for ConnectionMonitorSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionMonitorSource',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorSource',
            model_properties: {
              resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'port',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
