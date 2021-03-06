# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2020-02-01/generated/azure_mgmt_container_service/module_definition'
require 'ms_rest_azure'

module Azure::ContainerService::Mgmt::V2020_02_01
  autoload :Operations,                                         '2020-02-01/generated/azure_mgmt_container_service/operations.rb'
  autoload :ManagedClusters,                                    '2020-02-01/generated/azure_mgmt_container_service/managed_clusters.rb'
  autoload :AgentPools,                                         '2020-02-01/generated/azure_mgmt_container_service/agent_pools.rb'
  autoload :ContainerServiceClient,                             '2020-02-01/generated/azure_mgmt_container_service/container_service_client.rb'

  module Models
    autoload :ContainerServiceDiagnosticsProfile,                 '2020-02-01/generated/azure_mgmt_container_service/models/container_service_diagnostics_profile.rb'
    autoload :OperationValue,                                     '2020-02-01/generated/azure_mgmt_container_service/models/operation_value.rb'
    autoload :ContainerServiceVMDiagnostics,                      '2020-02-01/generated/azure_mgmt_container_service/models/container_service_vmdiagnostics.rb'
    autoload :Resource,                                           '2020-02-01/generated/azure_mgmt_container_service/models/resource.rb'
    autoload :OperationListResult,                                '2020-02-01/generated/azure_mgmt_container_service/models/operation_list_result.rb'
    autoload :TagsObject,                                         '2020-02-01/generated/azure_mgmt_container_service/models/tags_object.rb'
    autoload :ContainerServiceMasterProfile,                      '2020-02-01/generated/azure_mgmt_container_service/models/container_service_master_profile.rb'
    autoload :ManagedClusterAddonProfile,                         '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_addon_profile.rb'
    autoload :ManagedClusterAgentPoolProfileProperties,           '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_agent_pool_profile_properties.rb'
    autoload :AgentPoolAvailableVersionsPropertiesAgentPoolVersionsItem, '2020-02-01/generated/azure_mgmt_container_service/models/agent_pool_available_versions_properties_agent_pool_versions_item.rb'
    autoload :AgentPoolListResult,                                '2020-02-01/generated/azure_mgmt_container_service/models/agent_pool_list_result.rb'
    autoload :ManagedClusterAADProfile,                           '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_aadprofile.rb'
    autoload :ContainerServiceSshPublicKey,                       '2020-02-01/generated/azure_mgmt_container_service/models/container_service_ssh_public_key.rb'
    autoload :ManagedClusterPropertiesAutoScalerProfile,          '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_properties_auto_scaler_profile.rb'
    autoload :ContainerServiceLinuxProfile,                       '2020-02-01/generated/azure_mgmt_container_service/models/container_service_linux_profile.rb'
    autoload :ManagedClusterAPIServerAccessProfile,               '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_apiserver_access_profile.rb'
    autoload :ResourceReference,                                  '2020-02-01/generated/azure_mgmt_container_service/models/resource_reference.rb'
    autoload :ManagedClusterLoadBalancerProfileOutboundIPs,       '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_load_balancer_profile_outbound_ips.rb'
    autoload :ManagedClusterIdentity,                             '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_identity.rb'
    autoload :ContainerServiceNetworkProfile,                     '2020-02-01/generated/azure_mgmt_container_service/models/container_service_network_profile.rb'
    autoload :CredentialResults,                                  '2020-02-01/generated/azure_mgmt_container_service/models/credential_results.rb'
    autoload :ManagedClusterServicePrincipalProfile,              '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_service_principal_profile.rb'
    autoload :ManagedClusterListResult,                           '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_list_result.rb'
    autoload :ManagedClusterWindowsProfile,                       '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_windows_profile.rb'
    autoload :UserAssignedIdentity,                               '2020-02-01/generated/azure_mgmt_container_service/models/user_assigned_identity.rb'
    autoload :ManagedClusterLoadBalancerProfileManagedOutboundIPs, '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_load_balancer_profile_managed_outbound_ips.rb'
    autoload :CredentialResult,                                   '2020-02-01/generated/azure_mgmt_container_service/models/credential_result.rb'
    autoload :ManagedClusterLoadBalancerProfile,                  '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_load_balancer_profile.rb'
    autoload :ManagedClusterPoolUpgradeProfileUpgradesItem,       '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_pool_upgrade_profile_upgrades_item.rb'
    autoload :AgentPoolAvailableVersions,                         '2020-02-01/generated/azure_mgmt_container_service/models/agent_pool_available_versions.rb'
    autoload :ManagedClusterPoolUpgradeProfile,                   '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_pool_upgrade_profile.rb'
    autoload :ManagedClusterLoadBalancerProfileOutboundIPPrefixes, '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_load_balancer_profile_outbound_ipprefixes.rb'
    autoload :ManagedClusterUpgradeProfile,                       '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_upgrade_profile.rb'
    autoload :ContainerServiceSshConfiguration,                   '2020-02-01/generated/azure_mgmt_container_service/models/container_service_ssh_configuration.rb'
    autoload :AgentPoolUpgradeProfilePropertiesUpgradesItem,      '2020-02-01/generated/azure_mgmt_container_service/models/agent_pool_upgrade_profile_properties_upgrades_item.rb'
    autoload :SubResource,                                        '2020-02-01/generated/azure_mgmt_container_service/models/sub_resource.rb'
    autoload :AgentPoolUpgradeProfile,                            '2020-02-01/generated/azure_mgmt_container_service/models/agent_pool_upgrade_profile.rb'
    autoload :ManagedClusterAgentPoolProfile,                     '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_agent_pool_profile.rb'
    autoload :AgentPool,                                          '2020-02-01/generated/azure_mgmt_container_service/models/agent_pool.rb'
    autoload :ManagedClusterAddonProfileIdentity,                 '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_addon_profile_identity.rb'
    autoload :ManagedClusterPropertiesIdentityProfileValue,       '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_properties_identity_profile_value.rb'
    autoload :ManagedCluster,                                     '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster.rb'
    autoload :ManagedClusterAccessProfile,                        '2020-02-01/generated/azure_mgmt_container_service/models/managed_cluster_access_profile.rb'
    autoload :ContainerServiceStorageProfileTypes,                '2020-02-01/generated/azure_mgmt_container_service/models/container_service_storage_profile_types.rb'
    autoload :ContainerServiceVMSizeTypes,                        '2020-02-01/generated/azure_mgmt_container_service/models/container_service_vmsize_types.rb'
    autoload :OSType,                                             '2020-02-01/generated/azure_mgmt_container_service/models/ostype.rb'
    autoload :AgentPoolType,                                      '2020-02-01/generated/azure_mgmt_container_service/models/agent_pool_type.rb'
    autoload :ScaleSetPriority,                                   '2020-02-01/generated/azure_mgmt_container_service/models/scale_set_priority.rb'
    autoload :ScaleSetEvictionPolicy,                             '2020-02-01/generated/azure_mgmt_container_service/models/scale_set_eviction_policy.rb'
    autoload :NetworkPlugin,                                      '2020-02-01/generated/azure_mgmt_container_service/models/network_plugin.rb'
    autoload :NetworkPolicy,                                      '2020-02-01/generated/azure_mgmt_container_service/models/network_policy.rb'
    autoload :NetworkMode,                                        '2020-02-01/generated/azure_mgmt_container_service/models/network_mode.rb'
    autoload :OutboundType,                                       '2020-02-01/generated/azure_mgmt_container_service/models/outbound_type.rb'
    autoload :LoadBalancerSku,                                    '2020-02-01/generated/azure_mgmt_container_service/models/load_balancer_sku.rb'
    autoload :ResourceIdentityType,                               '2020-02-01/generated/azure_mgmt_container_service/models/resource_identity_type.rb'
  end
end
