# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  module Models
    #
    # An instance of CreateKbInputDTO for add operation
    #
    class UpdateKbOperationDTOAdd < CreateKbInputDTO

      include MsRestAzure


      #
      # Mapper for UpdateKbOperationDTOAdd class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpdateKbOperationDTO_add',
          type: {
            name: 'Composite',
            class_name: 'UpdateKbOperationDTOAdd',
            model_properties: {
              qna_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'qnaList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'QnADTOElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'QnADTO'
                      }
                  }
                }
              },
              urls: {
                client_side_validation: true,
                required: false,
                serialized_name: 'urls',
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
              },
              files: {
                client_side_validation: true,
                required: false,
                serialized_name: 'files',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FileDTOElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FileDTO'
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