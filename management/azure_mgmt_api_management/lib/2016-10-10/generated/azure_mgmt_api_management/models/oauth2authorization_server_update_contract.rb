# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # External OAuth authorization server Update settings contract.
    #
    class OAuth2AuthorizationServerUpdateContract

      include MsRestAzure

      # @return [String] User-friendly authorization server name.
      attr_accessor :name

      # @return [String] Description of the authorization server. Can contain
      # HTML formatting tags.
      attr_accessor :description

      # @return [String] Optional reference to a page where client or app
      # registration for this authorization server is performed. Contains
      # absolute URL to entity being referenced.
      attr_accessor :client_registration_endpoint

      # @return [String] OAuth authorization endpoint. See
      # http://tools.ietf.org/html/rfc6749#section-3.2.
      attr_accessor :authorization_endpoint

      # @return [Array<MethodContract>] HTTP verbs supported by the
      # authorization endpoint. GET must be always present. POST is optional.
      attr_accessor :authorization_methods

      # @return [Array<ClientAuthenticationMethodContract>] Method of
      # authentication supported by the token endpoint of this authorization
      # server. Possible values are Basic and/or Body. When Body is specified,
      # client credentials and other parameters are passed within the request
      # body in the application/x-www-form-urlencoded format.
      attr_accessor :client_authentication_method

      # @return [Array<TokenBodyParameterContract>] Additional parameters
      # required by the token endpoint of this authorization server represented
      # as an array of JSON objects with name and value string properties, i.e.
      # {"name" : "name value", "value": "a value"}.
      attr_accessor :token_body_parameters

      # @return [String] OAuth token endpoint. Contains absolute URI to entity
      # being referenced.
      attr_accessor :token_endpoint

      # @return [Boolean] If true, authorization server will include state
      # parameter from the authorization request to its response. Client may
      # use state parameter to raise protocol security.
      attr_accessor :support_state

      # @return [String] Access token scope that is going to be requested by
      # default. Can be overridden at the API level. Should be provided in the
      # form of a string containing space-delimited values.
      attr_accessor :default_scope

      # @return [Array<GrantTypesContract>] Form of an authorization grant,
      # which the client uses to request the access token.
      attr_accessor :grant_types

      # @return [Array<BearerTokenSendingMethodsContract>] Specifies the
      # mechanism by which access token is passed to the API.
      attr_accessor :bearer_token_sending_methods

      # @return [String] Client or app id registered with this authorization
      # server.
      attr_accessor :client_id

      # @return [String] Client or app secret registered with this
      # authorization server.
      attr_accessor :client_secret

      # @return [String] Can be optionally specified when resource owner
      # password grant type is supported by this authorization server. Default
      # resource owner username.
      attr_accessor :resource_owner_username

      # @return [String] Can be optionally specified when resource owner
      # password grant type is supported by this authorization server. Default
      # resource owner password.
      attr_accessor :resource_owner_password


      #
      # Mapper for OAuth2AuthorizationServerUpdateContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OAuth2AuthorizationServerUpdateContract',
          type: {
            name: 'Composite',
            class_name: 'OAuth2AuthorizationServerUpdateContract',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 50,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              client_registration_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clientRegistrationEndpoint',
                type: {
                  name: 'String'
                }
              },
              authorization_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'authorizationEndpoint',
                type: {
                  name: 'String'
                }
              },
              authorization_methods: {
                client_side_validation: true,
                required: false,
                serialized_name: 'authorizationMethods',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MethodContractElementType',
                      type: {
                        name: 'Enum',
                        module: 'MethodContract'
                      }
                  }
                }
              },
              client_authentication_method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clientAuthenticationMethod',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClientAuthenticationMethodContractElementType',
                      type: {
                        name: 'Enum',
                        module: 'ClientAuthenticationMethodContract'
                      }
                  }
                }
              },
              token_body_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tokenBodyParameters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TokenBodyParameterContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TokenBodyParameterContract'
                      }
                  }
                }
              },
              token_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tokenEndpoint',
                type: {
                  name: 'String'
                }
              },
              support_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'supportState',
                type: {
                  name: 'Boolean'
                }
              },
              default_scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultScope',
                type: {
                  name: 'String'
                }
              },
              grant_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'grantTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'GrantTypesContractElementType',
                      type: {
                        name: 'Enum',
                        module: 'GrantTypesContract'
                      }
                  }
                }
              },
              bearer_token_sending_methods: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bearerTokenSendingMethods',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BearerTokenSendingMethodsContractElementType',
                      type: {
                        name: 'Enum',
                        module: 'BearerTokenSendingMethodsContract'
                      }
                  }
                }
              },
              client_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clientId',
                type: {
                  name: 'String'
                }
              },
              client_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clientSecret',
                type: {
                  name: 'String'
                }
              },
              resource_owner_username: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceOwnerUsername',
                type: {
                  name: 'String'
                }
              },
              resource_owner_password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceOwnerPassword',
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
