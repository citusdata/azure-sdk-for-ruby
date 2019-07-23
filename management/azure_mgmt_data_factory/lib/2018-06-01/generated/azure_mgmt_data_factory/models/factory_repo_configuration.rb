# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Factory's git repo information.
    #
    class FactoryRepoConfiguration

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["FactoryVSTSConfiguration"] = "FactoryVSTSConfiguration"
      @@discriminatorMap["FactoryGitHubConfiguration"] = "FactoryGitHubConfiguration"

      def initialize
        @type = "FactoryRepoConfiguration"
      end

      attr_accessor :type

      # @return [String] Account name.
      attr_accessor :account_name

      # @return [String] Repository name.
      attr_accessor :repository_name

      # @return [String] Collaboration branch.
      attr_accessor :collaboration_branch

      # @return [String] Root folder.
      attr_accessor :root_folder

      # @return [String] Last commit id.
      attr_accessor :last_commit_id


      #
      # Mapper for FactoryRepoConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FactoryRepoConfiguration',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'FactoryRepoConfiguration',
            class_name: 'FactoryRepoConfiguration',
            model_properties: {
              account_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'accountName',
                type: {
                  name: 'String'
                }
              },
              repository_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'repositoryName',
                type: {
                  name: 'String'
                }
              },
              collaboration_branch: {
                client_side_validation: true,
                required: true,
                serialized_name: 'collaborationBranch',
                type: {
                  name: 'String'
                }
              },
              root_folder: {
                client_side_validation: true,
                required: true,
                serialized_name: 'rootFolder',
                type: {
                  name: 'String'
                }
              },
              last_commit_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastCommitId',
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
