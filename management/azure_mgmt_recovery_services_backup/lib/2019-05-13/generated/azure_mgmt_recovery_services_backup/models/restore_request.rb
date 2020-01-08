# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # Base class for restore request. Workload-specific restore requests are
    # derived from this class.
    #
    class RestoreRequest

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AzureFileShareRestoreRequest"] = "AzureFileShareRestoreRequest"
      @@discriminatorMap["AzureWorkloadPointInTimeRestoreRequest"] = "AzureWorkloadPointInTimeRestoreRequest"
      @@discriminatorMap["AzureWorkloadRestoreRequest"] = "AzureWorkloadRestoreRequest"
      @@discriminatorMap["AzureWorkloadSAPHanaPointInTimeRestoreRequest"] = "AzureWorkloadSAPHanaPointInTimeRestoreRequest"
      @@discriminatorMap["AzureWorkloadSAPHanaRestoreRequest"] = "AzureWorkloadSAPHanaRestoreRequest"
      @@discriminatorMap["AzureWorkloadSQLPointInTimeRestoreRequest"] = "AzureWorkloadSQLPointInTimeRestoreRequest"
      @@discriminatorMap["AzureWorkloadSQLRestoreRequest"] = "AzureWorkloadSQLRestoreRequest"
      @@discriminatorMap["IaasVMRestoreRequest"] = "IaasVMRestoreRequest"

      def initialize
        @objectType = "RestoreRequest"
      end

      attr_accessor :objectType


      #
      # Mapper for RestoreRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RestoreRequest',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'objectType',
            uber_parent: 'RestoreRequest',
            class_name: 'RestoreRequest',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
