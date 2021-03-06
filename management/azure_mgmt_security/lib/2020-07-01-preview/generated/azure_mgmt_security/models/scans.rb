# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_07_01_preview
  module Models
    #
    # A list of vulnerability assessment scan records.
    #
    class Scans

      include MsRestAzure

      # @return [Array<Scan>] List of vulnerability assessment scan records.
      attr_accessor :value


      #
      # Mapper for Scans class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Scans',
          type: {
            name: 'Composite',
            class_name: 'Scans',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ScanElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Scan'
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
