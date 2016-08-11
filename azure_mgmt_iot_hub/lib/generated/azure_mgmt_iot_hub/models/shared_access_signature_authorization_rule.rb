# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub
  module Models
    #
    # The properties that describe the keys to access the IotHub artifacts.
    #
    class SharedAccessSignatureAuthorizationRule

      include MsRestAzure

      # @return [String] The name of the key.
      attr_accessor :key_name

      # @return [String] The primary key.
      attr_accessor :primary_key

      # @return [String] The secondary key.
      attr_accessor :secondary_key

      # @return [AccessRights] The access rights. Possible values include:
      # 'RegistryRead', 'RegistryWrite', 'ServiceConnect', 'DeviceConnect',
      # 'RegistryRead, RegistryWrite', 'RegistryRead, ServiceConnect',
      # 'RegistryRead, DeviceConnect', 'RegistryWrite, ServiceConnect',
      # 'RegistryWrite, DeviceConnect', 'ServiceConnect, DeviceConnect',
      # 'RegistryRead, RegistryWrite, ServiceConnect', 'RegistryRead,
      # RegistryWrite, DeviceConnect', 'RegistryRead, ServiceConnect,
      # DeviceConnect', 'RegistryWrite, ServiceConnect, DeviceConnect',
      # 'RegistryRead, RegistryWrite, ServiceConnect, DeviceConnect'
      attr_accessor :rights


      #
      # Mapper for SharedAccessSignatureAuthorizationRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SharedAccessSignatureAuthorizationRule',
          type: {
            name: 'Composite',
            class_name: 'SharedAccessSignatureAuthorizationRule',
            model_properties: {
              key_name: {
                required: false,
                serialized_name: 'keyName',
                type: {
                  name: 'String'
                }
              },
              primary_key: {
                required: false,
                serialized_name: 'primaryKey',
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                required: false,
                serialized_name: 'secondaryKey',
                type: {
                  name: 'String'
                }
              },
              rights: {
                required: false,
                serialized_name: 'rights',
                type: {
                  name: 'Enum',
                  module: 'AccessRights'
                }
              }
            }
          }
        }
      end
    end
  end
end
