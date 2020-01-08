# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # Model object.
    #
    #
    class ValidateOperationsResponse

      include MsRestAzure

      # @return [ValidateOperationResponse]
      attr_accessor :validate_operation_response


      #
      # Mapper for ValidateOperationsResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ValidateOperationsResponse',
          type: {
            name: 'Composite',
            class_name: 'ValidateOperationsResponse',
            model_properties: {
              validate_operation_response: {
                client_side_validation: true,
                required: false,
                serialized_name: 'validateOperationResponse',
                type: {
                  name: 'Composite',
                  class_name: 'ValidateOperationResponse'
                }
              }
            }
          }
        }
      end
    end
  end
end
