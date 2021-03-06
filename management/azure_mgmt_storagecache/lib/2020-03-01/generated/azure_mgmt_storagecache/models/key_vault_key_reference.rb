# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2020_03_01
  module Models
    #
    # Describes a reference to Key Vault Key.
    #
    class KeyVaultKeyReference

      include MsRestAzure

      # @return [String] The URL referencing a key encryption key in Key Vault.
      attr_accessor :key_url

      # @return [KeyVaultKeyReferenceSourceVault] Describes a resource Id to
      # source Key Vault.
      attr_accessor :source_vault


      #
      # Mapper for KeyVaultKeyReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyVaultKeyReference',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultKeyReference',
            model_properties: {
              key_url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyUrl',
                type: {
                  name: 'String'
                }
              },
              source_vault: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceVault',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultKeyReferenceSourceVault'
                }
              }
            }
          }
        }
      end
    end
  end
end
