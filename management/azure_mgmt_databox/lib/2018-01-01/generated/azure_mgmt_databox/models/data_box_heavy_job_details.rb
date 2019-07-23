# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBox::Mgmt::V2018_01_01
  module Models
    #
    # DataBoxHeavy Device Job Details
    #
    class DataBoxHeavyJobDetails < JobDetails

      include MsRestAzure


      def initialize
        @jobDetailsType = "DataBoxHeavy"
      end

      attr_accessor :jobDetailsType

      # @return [Array<CopyProgress>] Copy progress per account.
      attr_accessor :copy_progress


      #
      # Mapper for DataBoxHeavyJobDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataBoxHeavy',
          type: {
            name: 'Composite',
            class_name: 'DataBoxHeavyJobDetails',
            model_properties: {
              expected_data_size_in_tera_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expectedDataSizeInTeraBytes',
                type: {
                  name: 'Number'
                }
              },
              job_stages: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'jobStages',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JobStagesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JobStages'
                      }
                  }
                }
              },
              contact_details: {
                client_side_validation: true,
                required: true,
                serialized_name: 'contactDetails',
                type: {
                  name: 'Composite',
                  class_name: 'ContactDetails'
                }
              },
              shipping_address: {
                client_side_validation: true,
                required: true,
                serialized_name: 'shippingAddress',
                type: {
                  name: 'Composite',
                  class_name: 'ShippingAddress'
                }
              },
              delivery_package: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'deliveryPackage',
                type: {
                  name: 'Composite',
                  class_name: 'PackageShippingDetails'
                }
              },
              return_package: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'returnPackage',
                type: {
                  name: 'Composite',
                  class_name: 'PackageShippingDetails'
                }
              },
              destination_account_details: {
                client_side_validation: true,
                required: true,
                serialized_name: 'destinationAccountDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DestinationAccountDetailsElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'dataDestinationType',
                        uber_parent: 'DestinationAccountDetails',
                        class_name: 'DestinationAccountDetails'
                      }
                  }
                }
              },
              error_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errorDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JobErrorDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JobErrorDetails'
                      }
                  }
                }
              },
              preferences: {
                client_side_validation: true,
                required: false,
                serialized_name: 'preferences',
                type: {
                  name: 'Composite',
                  class_name: 'Preferences'
                }
              },
              copy_log_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'copyLogDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CopyLogDetailsElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'copyLogDetailsType',
                        uber_parent: 'CopyLogDetails',
                        class_name: 'CopyLogDetails'
                      }
                  }
                }
              },
              reverse_shipment_label_sas_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'reverseShipmentLabelSasKey',
                type: {
                  name: 'String'
                }
              },
              chain_of_custody_sas_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'chainOfCustodySasKey',
                type: {
                  name: 'String'
                }
              },
              jobDetailsType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'jobDetailsType',
                type: {
                  name: 'String'
                }
              },
              copy_progress: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'copyProgress',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CopyProgressElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CopyProgress'
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
