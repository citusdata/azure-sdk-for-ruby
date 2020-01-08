# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # Base class for backup schedule.
    #
    class SchedulePolicy

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["LogSchedulePolicy"] = "LogSchedulePolicy"
      @@discriminatorMap["LongTermSchedulePolicy"] = "LongTermSchedulePolicy"
      @@discriminatorMap["SimpleSchedulePolicy"] = "SimpleSchedulePolicy"

      def initialize
        @schedulePolicyType = "SchedulePolicy"
      end

      attr_accessor :schedulePolicyType


      #
      # Mapper for SchedulePolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SchedulePolicy',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'schedulePolicyType',
            uber_parent: 'SchedulePolicy',
            class_name: 'SchedulePolicy',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
