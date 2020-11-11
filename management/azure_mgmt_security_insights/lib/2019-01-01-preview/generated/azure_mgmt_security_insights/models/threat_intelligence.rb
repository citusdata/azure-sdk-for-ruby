# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # ThreatIntelligence property bag.
    #
    class ThreatIntelligence

      include MsRestAzure

      # @return [Float] Confidence (must be between 0 and 1)
      attr_accessor :confidence

      # @return [String] Name of the provider from whom this Threat
      # Intelligence information was received
      attr_accessor :provider_name

      # @return [String] Report link
      attr_accessor :report_link

      # @return [String] Threat description (free text)
      attr_accessor :threat_description

      # @return [String] Threat name (e.g. "Jedobot malware")
      attr_accessor :threat_name

      # @return [String] Threat type (e.g. "Botnet")
      attr_accessor :threat_type


      #
      # Mapper for ThreatIntelligence class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ThreatIntelligence',
          type: {
            name: 'Composite',
            class_name: 'ThreatIntelligence',
            model_properties: {
              confidence: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'confidence',
                type: {
                  name: 'Double'
                }
              },
              provider_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'providerName',
                type: {
                  name: 'String'
                }
              },
              report_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'reportLink',
                type: {
                  name: 'String'
                }
              },
              threat_description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'threatDescription',
                type: {
                  name: 'String'
                }
              },
              threat_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'threatName',
                type: {
                  name: 'String'
                }
              },
              threat_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'threatType',
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