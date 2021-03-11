# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2021_01_01
  module Models
    #
    # The blob service properties for Last access time based tracking policy.
    #
    class LastAccessTimeTrackingPolicy

      include MsRestAzure

      # @return [Boolean] When set to true last access time based tracking is
      # enabled.
      attr_accessor :enable

      # @return [Name] Name of the policy. The valid value is
      # AccessTimeTracking. This field is currently read only. Possible values
      # include: 'AccessTimeTracking'
      attr_accessor :name

      # @return [Integer] The field specifies blob object tracking granularity
      # in days, typically how often the blob object should be tracked.This
      # field is currently read only with value as 1
      attr_accessor :tracking_granularity_in_days

      # @return [Array<String>] An array of predefined supported blob types.
      # Only blockBlob is the supported value. This field is currently read
      # only
      attr_accessor :blob_type


      #
      # Mapper for LastAccessTimeTrackingPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LastAccessTimeTrackingPolicy',
          type: {
            name: 'Composite',
            class_name: 'LastAccessTimeTrackingPolicy',
            model_properties: {
              enable: {
                client_side_validation: true,
                required: true,
                serialized_name: 'enable',
                type: {
                  name: 'Boolean'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tracking_granularity_in_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'trackingGranularityInDays',
                type: {
                  name: 'Number'
                }
              },
              blob_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blobType',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end