# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # Base class for retention policy.
    #
    class RetentionPolicy

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["LongTermRetentionPolicy"] = "LongTermRetentionPolicy"
      @@discriminatorMap["SimpleRetentionPolicy"] = "SimpleRetentionPolicy"

      def initialize
        @retentionPolicyType = "RetentionPolicy"
      end

      attr_accessor :retentionPolicyType


      #
      # Mapper for RetentionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RetentionPolicy',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'retentionPolicyType',
            uber_parent: 'RetentionPolicy',
            class_name: 'RetentionPolicy',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
