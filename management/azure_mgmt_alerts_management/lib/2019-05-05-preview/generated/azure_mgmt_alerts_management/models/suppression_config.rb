# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2019_05_05_preview
  module Models
    #
    # Suppression logic for a given action rule
    #
    class SuppressionConfig

      include MsRestAzure

      # @return [SuppressionType] Specifies when the suppression should be
      # applied. Possible values include: 'Always', 'Once', 'Daily', 'Weekly',
      # 'Monthly'
      attr_accessor :recurrence_type

      # @return [SuppressionSchedule] suppression schedule configuration
      attr_accessor :schedule


      #
      # Mapper for SuppressionConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SuppressionConfig',
          type: {
            name: 'Composite',
            class_name: 'SuppressionConfig',
            model_properties: {
              recurrence_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'recurrenceType',
                type: {
                  name: 'String'
                }
              },
              schedule: {
                client_side_validation: true,
                required: false,
                serialized_name: 'schedule',
                type: {
                  name: 'Composite',
                  class_name: 'SuppressionSchedule'
                }
              }
            }
          }
        }
      end
    end
  end
end
