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
require '2018-05-01/generated/azure_mgmt_batchai/module_definition'
require 'ms_rest_azure'

module Azure::BatchAI::Mgmt::V2018_05_01
  autoload :Operations,                                         '2018-05-01/generated/azure_mgmt_batchai/operations.rb'
  autoload :Usages,                                             '2018-05-01/generated/azure_mgmt_batchai/usages.rb'
  autoload :Workspaces,                                         '2018-05-01/generated/azure_mgmt_batchai/workspaces.rb'
  autoload :Experiments,                                        '2018-05-01/generated/azure_mgmt_batchai/experiments.rb'
  autoload :Jobs,                                               '2018-05-01/generated/azure_mgmt_batchai/jobs.rb'
  autoload :FileServers,                                        '2018-05-01/generated/azure_mgmt_batchai/file_servers.rb'
  autoload :Clusters,                                           '2018-05-01/generated/azure_mgmt_batchai/clusters.rb'
  autoload :BatchAIManagementClient,                            '2018-05-01/generated/azure_mgmt_batchai/batch_aimanagement_client.rb'

  module Models
    autoload :PyTorchSettings,                                    '2018-05-01/generated/azure_mgmt_batchai/models/py_torch_settings.rb'
    autoload :UsageName,                                          '2018-05-01/generated/azure_mgmt_batchai/models/usage_name.rb'
    autoload :TensorFlowSettings,                                 '2018-05-01/generated/azure_mgmt_batchai/models/tensor_flow_settings.rb'
    autoload :ListUsagesResult,                                   '2018-05-01/generated/azure_mgmt_batchai/models/list_usages_result.rb'
    autoload :CaffeSettings,                                      '2018-05-01/generated/azure_mgmt_batchai/models/caffe_settings.rb'
    autoload :SshConfiguration,                                   '2018-05-01/generated/azure_mgmt_batchai/models/ssh_configuration.rb'
    autoload :Caffe2Settings,                                     '2018-05-01/generated/azure_mgmt_batchai/models/caffe2settings.rb'
    autoload :ResourceId,                                         '2018-05-01/generated/azure_mgmt_batchai/models/resource_id.rb'
    autoload :ChainerSettings,                                    '2018-05-01/generated/azure_mgmt_batchai/models/chainer_settings.rb'
    autoload :DataDisks,                                          '2018-05-01/generated/azure_mgmt_batchai/models/data_disks.rb'
    autoload :FileServerListResult,                               '2018-05-01/generated/azure_mgmt_batchai/models/file_server_list_result.rb'
    autoload :MountSettings,                                      '2018-05-01/generated/azure_mgmt_batchai/models/mount_settings.rb'
    autoload :FileServerCreateParameters,                         '2018-05-01/generated/azure_mgmt_batchai/models/file_server_create_parameters.rb'
    autoload :FileServersListByWorkspaceOptions,                  '2018-05-01/generated/azure_mgmt_batchai/models/file_servers_list_by_workspace_options.rb'
    autoload :AutoScaleSettings,                                  '2018-05-01/generated/azure_mgmt_batchai/models/auto_scale_settings.rb'
    autoload :CustomToolkitSettings,                              '2018-05-01/generated/azure_mgmt_batchai/models/custom_toolkit_settings.rb'
    autoload :ImageReference,                                     '2018-05-01/generated/azure_mgmt_batchai/models/image_reference.rb'
    autoload :CustomMpiSettings,                                  '2018-05-01/generated/azure_mgmt_batchai/models/custom_mpi_settings.rb'
    autoload :EnvironmentVariable,                                '2018-05-01/generated/azure_mgmt_batchai/models/environment_variable.rb'
    autoload :HorovodSettings,                                    '2018-05-01/generated/azure_mgmt_batchai/models/horovod_settings.rb'
    autoload :SetupTask,                                          '2018-05-01/generated/azure_mgmt_batchai/models/setup_task.rb'
    autoload :JobPreparation,                                     '2018-05-01/generated/azure_mgmt_batchai/models/job_preparation.rb'
    autoload :AzureFileShareReference,                            '2018-05-01/generated/azure_mgmt_batchai/models/azure_file_share_reference.rb'
    autoload :InputDirectory,                                     '2018-05-01/generated/azure_mgmt_batchai/models/input_directory.rb'
    autoload :FileServerReference,                                '2018-05-01/generated/azure_mgmt_batchai/models/file_server_reference.rb'
    autoload :OutputDirectory,                                    '2018-05-01/generated/azure_mgmt_batchai/models/output_directory.rb'
    autoload :MountVolumes,                                       '2018-05-01/generated/azure_mgmt_batchai/models/mount_volumes.rb'
    autoload :JobBasePropertiesConstraints,                       '2018-05-01/generated/azure_mgmt_batchai/models/job_base_properties_constraints.rb'
    autoload :PerformanceCountersSettings,                        '2018-05-01/generated/azure_mgmt_batchai/models/performance_counters_settings.rb'
    autoload :JobCreateParameters,                                '2018-05-01/generated/azure_mgmt_batchai/models/job_create_parameters.rb'
    autoload :NodeStateCounts,                                    '2018-05-01/generated/azure_mgmt_batchai/models/node_state_counts.rb'
    autoload :JobPropertiesConstraints,                           '2018-05-01/generated/azure_mgmt_batchai/models/job_properties_constraints.rb'
    autoload :ClusterUpdateParameters,                            '2018-05-01/generated/azure_mgmt_batchai/models/cluster_update_parameters.rb'
    autoload :JobPropertiesExecutionInfo,                         '2018-05-01/generated/azure_mgmt_batchai/models/job_properties_execution_info.rb'
    autoload :BatchAIError,                                       '2018-05-01/generated/azure_mgmt_batchai/models/batch_aierror.rb'
    autoload :JobsListOutputFilesOptions,                         '2018-05-01/generated/azure_mgmt_batchai/models/jobs_list_output_files_options.rb'
    autoload :ClusterListResult,                                  '2018-05-01/generated/azure_mgmt_batchai/models/cluster_list_result.rb'
    autoload :JobListResult,                                      '2018-05-01/generated/azure_mgmt_batchai/models/job_list_result.rb'
    autoload :ImageSourceRegistry,                                '2018-05-01/generated/azure_mgmt_batchai/models/image_source_registry.rb'
    autoload :RemoteLoginInformation,                             '2018-05-01/generated/azure_mgmt_batchai/models/remote_login_information.rb'
    autoload :CNTKsettings,                                       '2018-05-01/generated/azure_mgmt_batchai/models/cntksettings.rb'
    autoload :RemoteLoginInformationListResult,                   '2018-05-01/generated/azure_mgmt_batchai/models/remote_login_information_list_result.rb'
    autoload :UserAccountSettings,                                '2018-05-01/generated/azure_mgmt_batchai/models/user_account_settings.rb'
    autoload :File,                                               '2018-05-01/generated/azure_mgmt_batchai/models/file.rb'
    autoload :ManualScaleSettings,                                '2018-05-01/generated/azure_mgmt_batchai/models/manual_scale_settings.rb'
    autoload :FileListResult,                                     '2018-05-01/generated/azure_mgmt_batchai/models/file_list_result.rb'
    autoload :VirtualMachineConfiguration,                        '2018-05-01/generated/azure_mgmt_batchai/models/virtual_machine_configuration.rb'
    autoload :Resource,                                           '2018-05-01/generated/azure_mgmt_batchai/models/resource.rb'
    autoload :AzureStorageCredentialsInfo,                        '2018-05-01/generated/azure_mgmt_batchai/models/azure_storage_credentials_info.rb'
    autoload :ProxyResource,                                      '2018-05-01/generated/azure_mgmt_batchai/models/proxy_resource.rb'
    autoload :UnmanagedFileSystemReference,                       '2018-05-01/generated/azure_mgmt_batchai/models/unmanaged_file_system_reference.rb'
    autoload :NodeSetup,                                          '2018-05-01/generated/azure_mgmt_batchai/models/node_setup.rb'
    autoload :NameValuePair,                                      '2018-05-01/generated/azure_mgmt_batchai/models/name_value_pair.rb'
    autoload :OperationDisplay,                                   '2018-05-01/generated/azure_mgmt_batchai/models/operation_display.rb'
    autoload :PrivateRegistryCredentials,                         '2018-05-01/generated/azure_mgmt_batchai/models/private_registry_credentials.rb'
    autoload :Operation,                                          '2018-05-01/generated/azure_mgmt_batchai/models/operation.rb'
    autoload :Usage,                                              '2018-05-01/generated/azure_mgmt_batchai/models/usage.rb'
    autoload :OperationListResult,                                '2018-05-01/generated/azure_mgmt_batchai/models/operation_list_result.rb'
    autoload :ScaleSettings,                                      '2018-05-01/generated/azure_mgmt_batchai/models/scale_settings.rb'
    autoload :JobsListByExperimentOptions,                        '2018-05-01/generated/azure_mgmt_batchai/models/jobs_list_by_experiment_options.rb'
    autoload :AzureBlobFileSystemReference,                       '2018-05-01/generated/azure_mgmt_batchai/models/azure_blob_file_system_reference.rb'
    autoload :WorkspaceListResult,                                '2018-05-01/generated/azure_mgmt_batchai/models/workspace_list_result.rb'
    autoload :ClusterCreateParameters,                            '2018-05-01/generated/azure_mgmt_batchai/models/cluster_create_parameters.rb'
    autoload :WorkspaceCreateParameters,                          '2018-05-01/generated/azure_mgmt_batchai/models/workspace_create_parameters.rb'
    autoload :ContainerSettings,                                  '2018-05-01/generated/azure_mgmt_batchai/models/container_settings.rb'
    autoload :WorkspaceUpdateParameters,                          '2018-05-01/generated/azure_mgmt_batchai/models/workspace_update_parameters.rb'
    autoload :EnvironmentVariableWithSecretValue,                 '2018-05-01/generated/azure_mgmt_batchai/models/environment_variable_with_secret_value.rb'
    autoload :ExperimentsListByWorkspaceOptions,                  '2018-05-01/generated/azure_mgmt_batchai/models/experiments_list_by_workspace_options.rb'
    autoload :ClustersListByWorkspaceOptions,                     '2018-05-01/generated/azure_mgmt_batchai/models/clusters_list_by_workspace_options.rb'
    autoload :ExperimentListResult,                               '2018-05-01/generated/azure_mgmt_batchai/models/experiment_list_result.rb'
    autoload :AppInsightsReference,                               '2018-05-01/generated/azure_mgmt_batchai/models/app_insights_reference.rb'
    autoload :WorkspacesListOptions,                              '2018-05-01/generated/azure_mgmt_batchai/models/workspaces_list_options.rb'
    autoload :KeyVaultSecretReference,                            '2018-05-01/generated/azure_mgmt_batchai/models/key_vault_secret_reference.rb'
    autoload :WorkspacesListByResourceGroupOptions,               '2018-05-01/generated/azure_mgmt_batchai/models/workspaces_list_by_resource_group_options.rb'
    autoload :FileServer,                                         '2018-05-01/generated/azure_mgmt_batchai/models/file_server.rb'
    autoload :Cluster,                                            '2018-05-01/generated/azure_mgmt_batchai/models/cluster.rb'
    autoload :Job,                                                '2018-05-01/generated/azure_mgmt_batchai/models/job.rb'
    autoload :Workspace,                                          '2018-05-01/generated/azure_mgmt_batchai/models/workspace.rb'
    autoload :Experiment,                                         '2018-05-01/generated/azure_mgmt_batchai/models/experiment.rb'
    autoload :UsageUnit,                                          '2018-05-01/generated/azure_mgmt_batchai/models/usage_unit.rb'
    autoload :CachingType,                                        '2018-05-01/generated/azure_mgmt_batchai/models/caching_type.rb'
    autoload :StorageAccountType,                                 '2018-05-01/generated/azure_mgmt_batchai/models/storage_account_type.rb'
    autoload :FileServerProvisioningState,                        '2018-05-01/generated/azure_mgmt_batchai/models/file_server_provisioning_state.rb'
    autoload :VmPriority,                                         '2018-05-01/generated/azure_mgmt_batchai/models/vm_priority.rb'
    autoload :DeallocationOption,                                 '2018-05-01/generated/azure_mgmt_batchai/models/deallocation_option.rb'
    autoload :ProvisioningState,                                  '2018-05-01/generated/azure_mgmt_batchai/models/provisioning_state.rb'
    autoload :AllocationState,                                    '2018-05-01/generated/azure_mgmt_batchai/models/allocation_state.rb'
    autoload :JobPriority,                                        '2018-05-01/generated/azure_mgmt_batchai/models/job_priority.rb'
    autoload :ToolType,                                           '2018-05-01/generated/azure_mgmt_batchai/models/tool_type.rb'
    autoload :ExecutionState,                                     '2018-05-01/generated/azure_mgmt_batchai/models/execution_state.rb'
    autoload :FileType,                                           '2018-05-01/generated/azure_mgmt_batchai/models/file_type.rb'
  end
end
