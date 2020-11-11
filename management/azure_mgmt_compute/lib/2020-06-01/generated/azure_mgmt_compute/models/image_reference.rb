# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_06_01
  module Models
    #
    # Specifies information about the image to use. You can specify information
    # about platform images, marketplace images, or virtual machine images.
    # This element is required when you want to use a platform image,
    # marketplace image, or virtual machine image, but is not used in other
    # creation operations. NOTE: Image reference publisher and offer can only
    # be set when you create the scale set.
    #
    class ImageReference < SubResource

      include MsRestAzure

      # @return [String] The image publisher.
      attr_accessor :publisher

      # @return [String] Specifies the offer of the platform image or
      # marketplace image used to create the virtual machine.
      attr_accessor :offer

      # @return [String] The image SKU.
      attr_accessor :sku

      # @return [String] Specifies the version of the platform image or
      # marketplace image used to create the virtual machine. The allowed
      # formats are Major.Minor.Build or 'latest'. Major, Minor, and Build are
      # decimal numbers. Specify 'latest' to use the latest version of an image
      # available at deploy time. Even if you use 'latest', the VM image will
      # not automatically update after deploy time even if a new version
      # becomes available.
      attr_accessor :version

      # @return [String] Specifies in decimal numbers, the version of platform
      # image or marketplace image used to create the virtual machine. This
      # readonly field differs from 'version', only if the value specified in
      # 'version' field is 'latest'.
      attr_accessor :exact_version


      #
      # Mapper for ImageReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageReference',
          type: {
            name: 'Composite',
            class_name: 'ImageReference',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              offer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'offer',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
                type: {
                  name: 'String'
                }
              },
              exact_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'exactVersion',
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