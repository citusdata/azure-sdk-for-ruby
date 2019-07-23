# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_03_01_preview
  module Models
    #
    # The start and end date for pulling data for the report.
    #
    class ReportConfigTimePeriod

      include MsRestAzure

      # @return [DateTime] The start date to pull data from.
      attr_accessor :from

      # @return [DateTime] The end date to pull data to.
      attr_accessor :to


      #
      # Mapper for ReportConfigTimePeriod class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReportConfigTimePeriod',
          type: {
            name: 'Composite',
            class_name: 'ReportConfigTimePeriod',
            model_properties: {
              from: {
                client_side_validation: true,
                required: true,
                serialized_name: 'from',
                type: {
                  name: 'DateTime'
                }
              },
              to: {
                client_side_validation: true,
                required: true,
                serialized_name: 'to',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
