# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2018_07_12_preview
  module Models
    #
    # A site for the Direct Line channel
    #
    class DirectLineSite

      include MsRestAzure

      # @return [String] Site Id
      attr_accessor :site_id

      # @return [String] Site name
      attr_accessor :site_name

      # @return [String] Primary key. Value only returned through POST to the
      # action Channel List API, otherwise empty.
      attr_accessor :key

      # @return [String] Secondary key. Value only returned through POST to the
      # action Channel List API, otherwise empty.
      attr_accessor :key2

      # @return [Boolean] Whether this site is enabled for DirectLine channel.
      attr_accessor :is_enabled

      # @return [Boolean] Whether this site is enabled for Bot Framework V1
      # protocol.
      attr_accessor :is_v1enabled

      # @return [Boolean] Whether this site is enabled for Bot Framework V1
      # protocol.
      attr_accessor :is_v3enabled

      # @return [Boolean] Whether this site is enabled for authentication with
      # Bot Framework.
      attr_accessor :is_secure_site_enabled

      # @return [Array<String>] List of Trusted Origin URLs for this site. This
      # field is applicable only if isSecureSiteEnabled is True.
      attr_accessor :trusted_origins


      #
      # Mapper for DirectLineSite class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DirectLineSite',
          type: {
            name: 'Composite',
            class_name: 'DirectLineSite',
            model_properties: {
              site_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'siteId',
                type: {
                  name: 'String'
                }
              },
              site_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'siteName',
                type: {
                  name: 'String'
                }
              },
              key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'key',
                type: {
                  name: 'String'
                }
              },
              key2: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'key2',
                type: {
                  name: 'String'
                }
              },
              is_enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'isEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              is_v1enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'isV1Enabled',
                type: {
                  name: 'Boolean'
                }
              },
              is_v3enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'isV3Enabled',
                type: {
                  name: 'Boolean'
                }
              },
              is_secure_site_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isSecureSiteEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              trusted_origins: {
                client_side_validation: true,
                required: false,
                serialized_name: 'trustedOrigins',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
