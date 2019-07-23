# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Defines how often data for a metric becomes available.
    #
    class OperationMetricAvailability

      include MsRestAzure

      # @return [String] The granularity for the metric.
      attr_accessor :time_grain

      # @return [String] Blob created in the customer storage account, per
      # hour.
      attr_accessor :blob_duration


      #
      # Mapper for OperationMetricAvailability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationMetricAvailability',
          type: {
            name: 'Composite',
            class_name: 'OperationMetricAvailability',
            model_properties: {
              time_grain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeGrain',
                type: {
                  name: 'String'
                }
              },
              blob_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blobDuration',
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
