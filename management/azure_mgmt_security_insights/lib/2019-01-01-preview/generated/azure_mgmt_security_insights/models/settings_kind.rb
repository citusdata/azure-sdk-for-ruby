# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Describes an Azure resource with kind.
    #
    class SettingsKind

      include MsRestAzure

      # @return [SettingKind] The kind of the setting. Possible values include:
      # 'EyesOn', 'EntityAnalytics', 'Ueba'
      attr_accessor :kind


      #
      # Mapper for SettingsKind class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SettingsKind',
          type: {
            name: 'Composite',
            class_name: 'SettingsKind',
            model_properties: {
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
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
