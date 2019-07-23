# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # Specifies Azure Application Insights information for performance counters
    # reporting.
    #
    class AppInsightsReference

      include MsRestAzure

      # @return [ResourceId] Specifies the Azure Application Insights component
      # resource id.
      attr_accessor :component

      # @return [String] Value of the Azure Application Insights
      # instrumentation key.
      attr_accessor :instrumentation_key

      # @return [KeyVaultSecretReference] Specifies a KeyVault Secret
      # containing Azure Application Insights instrumentation key. Specifies
      # KeyVault Store and Secret which contains Azure Application Insights
      # instrumentation key. One of instrumentationKey or
      # instrumentationKeySecretReference must be specified.
      attr_accessor :instrumentation_key_secret_reference


      #
      # Mapper for AppInsightsReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AppInsightsReference',
          type: {
            name: 'Composite',
            class_name: 'AppInsightsReference',
            model_properties: {
              component: {
                client_side_validation: true,
                required: true,
                serialized_name: 'component',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceId'
                }
              },
              instrumentation_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'instrumentationKey',
                type: {
                  name: 'String'
                }
              },
              instrumentation_key_secret_reference: {
                client_side_validation: true,
                required: false,
                serialized_name: 'instrumentationKeySecretReference',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultSecretReference'
                }
              }
            }
          }
        }
      end
    end
  end
end
