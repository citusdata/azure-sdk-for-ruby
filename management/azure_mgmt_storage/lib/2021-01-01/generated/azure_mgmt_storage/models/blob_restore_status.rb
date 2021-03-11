# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2021_01_01
  module Models
    #
    # Blob restore status.
    #
    class BlobRestoreStatus

      include MsRestAzure

      # @return [BlobRestoreProgressStatus] The status of blob restore
      # progress. Possible values are: - InProgress: Indicates that blob
      # restore is ongoing. - Complete: Indicates that blob restore has been
      # completed successfully. - Failed: Indicates that blob restore is
      # failed. Possible values include: 'InProgress', 'Complete', 'Failed'
      attr_accessor :status

      # @return [String] Failure reason when blob restore is failed.
      attr_accessor :failure_reason

      # @return [String] Id for tracking blob restore request.
      attr_accessor :restore_id

      # @return [BlobRestoreParameters] Blob restore request parameters.
      attr_accessor :parameters


      #
      # Mapper for BlobRestoreStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BlobRestoreStatus',
          type: {
            name: 'Composite',
            class_name: 'BlobRestoreStatus',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              failure_reason: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'failureReason',
                type: {
                  name: 'String'
                }
              },
              restore_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'restoreId',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'parameters',
                type: {
                  name: 'Composite',
                  class_name: 'BlobRestoreParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end