# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  #
  # A service client - single point of access to the REST API.
  #
  class LogicManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] The subscription id.
    attr_accessor :subscription_id

    # @return [String] The API version.
    attr_reader :api_version

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [Workflows] workflows
    attr_reader :workflows

    # @return [WorkflowVersions] workflow_versions
    attr_reader :workflow_versions

    # @return [WorkflowTriggers] workflow_triggers
    attr_reader :workflow_triggers

    # @return [WorkflowVersionTriggers] workflow_version_triggers
    attr_reader :workflow_version_triggers

    # @return [WorkflowTriggerHistories] workflow_trigger_histories
    attr_reader :workflow_trigger_histories

    # @return [WorkflowRuns] workflow_runs
    attr_reader :workflow_runs

    # @return [WorkflowRunActions] workflow_run_actions
    attr_reader :workflow_run_actions

    # @return [WorkflowRunActionRepetitions] workflow_run_action_repetitions
    attr_reader :workflow_run_action_repetitions

    # @return [WorkflowRunActionRepetitionsRequestHistories]
    # workflow_run_action_repetitions_request_histories
    attr_reader :workflow_run_action_repetitions_request_histories

    # @return [WorkflowRunActionRequestHistories]
    # workflow_run_action_request_histories
    attr_reader :workflow_run_action_request_histories

    # @return [WorkflowRunActionScopeRepetitions]
    # workflow_run_action_scope_repetitions
    attr_reader :workflow_run_action_scope_repetitions

    # @return [WorkflowRunOperations] workflow_run_operations
    attr_reader :workflow_run_operations

    # @return [IntegrationAccounts] integration_accounts
    attr_reader :integration_accounts

    # @return [IntegrationAccountAssemblies] integration_account_assemblies
    attr_reader :integration_account_assemblies

    # @return [IntegrationAccountBatchConfigurations]
    # integration_account_batch_configurations
    attr_reader :integration_account_batch_configurations

    # @return [IntegrationAccountSchemas] integration_account_schemas
    attr_reader :integration_account_schemas

    # @return [IntegrationAccountMaps] integration_account_maps
    attr_reader :integration_account_maps

    # @return [IntegrationAccountPartners] integration_account_partners
    attr_reader :integration_account_partners

    # @return [IntegrationAccountAgreements] integration_account_agreements
    attr_reader :integration_account_agreements

    # @return [IntegrationAccountCertificates] integration_account_certificates
    attr_reader :integration_account_certificates

    # @return [IntegrationAccountSessions] integration_account_sessions
    attr_reader :integration_account_sessions

    # @return [Operations] operations
    attr_reader :operations

    #
    # Creates initializes a new instance of the LogicManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @workflows = Workflows.new(self)
      @workflow_versions = WorkflowVersions.new(self)
      @workflow_triggers = WorkflowTriggers.new(self)
      @workflow_version_triggers = WorkflowVersionTriggers.new(self)
      @workflow_trigger_histories = WorkflowTriggerHistories.new(self)
      @workflow_runs = WorkflowRuns.new(self)
      @workflow_run_actions = WorkflowRunActions.new(self)
      @workflow_run_action_repetitions = WorkflowRunActionRepetitions.new(self)
      @workflow_run_action_repetitions_request_histories = WorkflowRunActionRepetitionsRequestHistories.new(self)
      @workflow_run_action_request_histories = WorkflowRunActionRequestHistories.new(self)
      @workflow_run_action_scope_repetitions = WorkflowRunActionScopeRepetitions.new(self)
      @workflow_run_operations = WorkflowRunOperations.new(self)
      @integration_accounts = IntegrationAccounts.new(self)
      @integration_account_assemblies = IntegrationAccountAssemblies.new(self)
      @integration_account_batch_configurations = IntegrationAccountBatchConfigurations.new(self)
      @integration_account_schemas = IntegrationAccountSchemas.new(self)
      @integration_account_maps = IntegrationAccountMaps.new(self)
      @integration_account_partners = IntegrationAccountPartners.new(self)
      @integration_account_agreements = IntegrationAccountAgreements.new(self)
      @integration_account_certificates = IntegrationAccountCertificates.new(self)
      @integration_account_sessions = IntegrationAccountSessions.new(self)
      @operations = Operations.new(self)
      @api_version = '2018-07-01-preview'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_logic'
        sdk_information = "#{sdk_information}/0.18.2"
        add_user_agent_information(sdk_information)
    end
  end
end
