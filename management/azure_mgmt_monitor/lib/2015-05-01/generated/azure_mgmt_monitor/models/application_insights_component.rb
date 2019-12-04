# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2015_05_01
  module Models
    #
    # An Application Insights component definition.
    #
    class ApplicationInsightsComponent < ComponentsResource

      include MsRestAzure

      # @return [String] The kind of application that this component refers to,
      # used to customize UI. This value is a freeform string, values should
      # typically be one of the following: web, ios, other, store, java, phone.
      attr_accessor :kind

      # @return [String] The unique ID of your application. This field mirrors
      # the 'Name' field and cannot be changed.
      attr_accessor :application_id

      # @return [String] Application Insights Unique ID for your Application.
      attr_accessor :app_id

      # @return [ApplicationType] Type of application being monitored. Possible
      # values include: 'web', 'other'. Default value: 'web' .
      attr_accessor :application_type

      # @return [FlowType] Used by the Application Insights system to determine
      # what kind of flow this component was created by. This is to be set to
      # 'Bluefield' when creating/updating a component via the REST API.
      # Possible values include: 'Bluefield'. Default value: 'Bluefield' .
      attr_accessor :flow_type

      # @return [RequestSource] Describes what tool created this Application
      # Insights component. Customers using this API should set this to the
      # default 'rest'. Possible values include: 'rest'. Default value: 'rest'
      # .
      attr_accessor :request_source

      # @return [String] Application Insights Instrumentation key. A read-only
      # value that applications can use to identify the destination for all
      # telemetry sent to Azure Application Insights. This value will be
      # supplied upon construction of each new Application Insights component.
      attr_accessor :instrumentation_key

      # @return [DateTime] Creation Date for the Application Insights
      # component, in ISO 8601 format.
      attr_accessor :creation_date

      # @return [String] Azure Tenant Id.
      attr_accessor :tenant_id

      # @return [String] The unique application ID created when a new
      # application is added to HockeyApp, used for communications with
      # HockeyApp.
      attr_accessor :hockey_app_id

      # @return [String] Token used to authenticate communications with between
      # Application Insights and HockeyApp.
      attr_accessor :hockey_app_token

      # @return [String] Current state of this component: whether or not is has
      # been provisioned within the resource group it is defined. Users cannot
      # change this value but are able to read from it. Values will include
      # Succeeded, Deploying, Canceled, and Failed.
      attr_accessor :provisioning_state

      # @return [Float] Percentage of the data produced by the application
      # being monitored that is being sampled for Application Insights
      # telemetry.
      attr_accessor :sampling_percentage


      #
      # Mapper for ApplicationInsightsComponent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationInsightsComponent',
          type: {
            name: 'Composite',
            class_name: 'ApplicationInsightsComponent',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              application_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.ApplicationId',
                type: {
                  name: 'String'
                }
              },
              app_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.AppId',
                type: {
                  name: 'String'
                }
              },
              application_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.Application_Type',
                default_value: 'web',
                type: {
                  name: 'String'
                }
              },
              flow_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.Flow_Type',
                default_value: 'Bluefield',
                type: {
                  name: 'String'
                }
              },
              request_source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.Request_Source',
                default_value: 'rest',
                type: {
                  name: 'String'
                }
              },
              instrumentation_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.InstrumentationKey',
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.CreationDate',
                type: {
                  name: 'DateTime'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.TenantId',
                type: {
                  name: 'String'
                }
              },
              hockey_app_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.HockeyAppId',
                type: {
                  name: 'String'
                }
              },
              hockey_app_token: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.HockeyAppToken',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              sampling_percentage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.SamplingPercentage',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end