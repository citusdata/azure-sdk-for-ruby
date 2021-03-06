# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_06_01
  module Models
    #
    # Properties of VPN client root certificate of VpnServerConfiguration.
    #
    class VpnServerConfigVpnClientRootCertificate

      include MsRestAzure

      # @return [String] The certificate name.
      attr_accessor :name

      # @return [String] The certificate public data.
      attr_accessor :public_cert_data


      #
      # Mapper for VpnServerConfigVpnClientRootCertificate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnServerConfigVpnClientRootCertificate',
          type: {
            name: 'Composite',
            class_name: 'VpnServerConfigVpnClientRootCertificate',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              public_cert_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publicCertData',
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
