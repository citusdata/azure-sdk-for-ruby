# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBox::Mgmt::V2018_01_01
  module Models
    #
    # Credential details of the account.
    #
    class AccountCredentialDetails

      include MsRestAzure

      # @return [String] Name of the account.
      attr_accessor :account_name

      # @return [String] Connection string of the account endpoint to use the
      # account as a storage endpoint on the device.
      attr_accessor :account_connection_string

      # @return [Array<ShareCredentialDetails>] Per share level unencrypted
      # access credentials.
      attr_accessor :share_credential_details


      #
      # Mapper for AccountCredentialDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AccountCredentialDetails',
          type: {
            name: 'Composite',
            class_name: 'AccountCredentialDetails',
            model_properties: {
              account_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'accountName',
                type: {
                  name: 'String'
                }
              },
              account_connection_string: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'accountConnectionString',
                type: {
                  name: 'String'
                }
              },
              share_credential_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'shareCredentialDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ShareCredentialDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ShareCredentialDetails'
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
