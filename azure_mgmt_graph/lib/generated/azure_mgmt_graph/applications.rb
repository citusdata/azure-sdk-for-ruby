# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  #
  # The Graph RBAC Management Client
  #
  class Applications
    include Azure::ARM::Graph::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Applications class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [GraphRbacManagementClient] reference to the GraphRbacManagementClient
    attr_reader :client

    #
    # Create a new application. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param parameters [ApplicationCreateParameters] Parameters to create an
    # application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Application] operation results.
    #
    def create(parameters, custom_headers = nil)
      response = create_async(parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create a new application. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param parameters [ApplicationCreateParameters] Parameters to create an
    # application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(parameters, custom_headers = nil)
      create_async(parameters, custom_headers).value!
    end

    #
    # Create a new application. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param parameters [ApplicationCreateParameters] Parameters to create an
    # application.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(parameters, custom_headers = nil)
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = ApplicationCreateParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters, 'parameters')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '/{tenantID}/applications'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'tenantID' => @client.tenant_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :post, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Application.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists applications by filter parameters. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param filter [String] The filters to apply on the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ApplicationListResult] operation results.
    #
    def list(filter = nil, custom_headers = nil)
      response = list_async(filter, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists applications by filter parameters. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param filter [String] The filters to apply on the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(filter = nil, custom_headers = nil)
      list_async(filter, custom_headers).value!
    end

    #
    # Lists applications by filter parameters. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param filter [String] The filters to apply on the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(filter = nil, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/{tenantID}/applications'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'tenantID' => @client.tenant_id},
          query_params: {'$filter' => filter,'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = ApplicationListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Delete an application. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param application_object_id [String] Application object id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(application_object_id, custom_headers = nil)
      response = delete_async(application_object_id, custom_headers).value!
      nil
    end

    #
    # Delete an application. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param application_object_id [String] Application object id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(application_object_id, custom_headers = nil)
      delete_async(application_object_id, custom_headers).value!
    end

    #
    # Delete an application. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param application_object_id [String] Application object id
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(application_object_id, custom_headers = nil)
      fail ArgumentError, 'application_object_id is nil' if application_object_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/{tenantID}/applications/{applicationObjectId}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'tenantID' => @client.tenant_id},
          skip_encoding_path_params: {'applicationObjectId' => application_object_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :delete, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Get an application by object Id. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param application_object_id [String] Application object id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Application] operation results.
    #
    def get(application_object_id, custom_headers = nil)
      response = get_async(application_object_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get an application by object Id. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param application_object_id [String] Application object id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(application_object_id, custom_headers = nil)
      get_async(application_object_id, custom_headers).value!
    end

    #
    # Get an application by object Id. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param application_object_id [String] Application object id
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(application_object_id, custom_headers = nil)
      fail ArgumentError, 'application_object_id is nil' if application_object_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/{tenantID}/applications/{applicationObjectId}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'tenantID' => @client.tenant_id},
          skip_encoding_path_params: {'applicationObjectId' => application_object_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Application.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Update existing application. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param application_object_id [String] Application object id
    # @param parameters [ApplicationUpdateParameters] Parameters to update an
    # existing application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def patch(application_object_id, parameters, custom_headers = nil)
      response = patch_async(application_object_id, parameters, custom_headers).value!
      nil
    end

    #
    # Update existing application. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param application_object_id [String] Application object id
    # @param parameters [ApplicationUpdateParameters] Parameters to update an
    # existing application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def patch_with_http_info(application_object_id, parameters, custom_headers = nil)
      patch_async(application_object_id, parameters, custom_headers).value!
    end

    #
    # Update existing application. Reference:
    # http://msdn.microsoft.com/en-us/library/azure/hh974476.aspx
    #
    # @param application_object_id [String] Application object id
    # @param parameters [ApplicationUpdateParameters] Parameters to update an
    # existing application.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def patch_async(application_object_id, parameters, custom_headers = nil)
      fail ArgumentError, 'application_object_id is nil' if application_object_id.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = ApplicationUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters, 'parameters')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '/{tenantID}/applications/{applicationObjectId}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'tenantID' => @client.tenant_id},
          skip_encoding_path_params: {'applicationObjectId' => application_object_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :patch, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Get keyCredentials associated with the application by object Id. Reference:
    # https://msdn.microsoft.com/en-us/library/azure/ad/graph/api/entity-and-complex-type-reference#keycredential-type
    #
    # @param application_object_id [String] Application object id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [KeyCredentialListResult] operation results.
    #
    def list_key_credentials(application_object_id, custom_headers = nil)
      response = list_key_credentials_async(application_object_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get keyCredentials associated with the application by object Id. Reference:
    # https://msdn.microsoft.com/en-us/library/azure/ad/graph/api/entity-and-complex-type-reference#keycredential-type
    #
    # @param application_object_id [String] Application object id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_key_credentials_with_http_info(application_object_id, custom_headers = nil)
      list_key_credentials_async(application_object_id, custom_headers).value!
    end

    #
    # Get keyCredentials associated with the application by object Id. Reference:
    # https://msdn.microsoft.com/en-us/library/azure/ad/graph/api/entity-and-complex-type-reference#keycredential-type
    #
    # @param application_object_id [String] Application object id
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_key_credentials_async(application_object_id, custom_headers = nil)
      fail ArgumentError, 'application_object_id is nil' if application_object_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/{tenantID}/applications/{applicationObjectId}/keyCredentials'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'tenantID' => @client.tenant_id},
          skip_encoding_path_params: {'applicationObjectId' => application_object_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = KeyCredentialListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Update keyCredentials associated with an existing application. Reference:
    # https://msdn.microsoft.com/en-us/library/azure/ad/graph/api/entity-and-complex-type-reference#keycredential-type
    #
    # @param application_object_id [String] Application object id
    # @param parameters [KeyCredentialsUpdateParameters] Parameters to update
    # keyCredentials of an existing application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def update_key_credentials(application_object_id, parameters, custom_headers = nil)
      response = update_key_credentials_async(application_object_id, parameters, custom_headers).value!
      nil
    end

    #
    # Update keyCredentials associated with an existing application. Reference:
    # https://msdn.microsoft.com/en-us/library/azure/ad/graph/api/entity-and-complex-type-reference#keycredential-type
    #
    # @param application_object_id [String] Application object id
    # @param parameters [KeyCredentialsUpdateParameters] Parameters to update
    # keyCredentials of an existing application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_key_credentials_with_http_info(application_object_id, parameters, custom_headers = nil)
      update_key_credentials_async(application_object_id, parameters, custom_headers).value!
    end

    #
    # Update keyCredentials associated with an existing application. Reference:
    # https://msdn.microsoft.com/en-us/library/azure/ad/graph/api/entity-and-complex-type-reference#keycredential-type
    #
    # @param application_object_id [String] Application object id
    # @param parameters [KeyCredentialsUpdateParameters] Parameters to update
    # keyCredentials of an existing application.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_key_credentials_async(application_object_id, parameters, custom_headers = nil)
      fail ArgumentError, 'application_object_id is nil' if application_object_id.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = KeyCredentialsUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters, 'parameters')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '/{tenantID}/applications/{applicationObjectId}/keyCredentials'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'tenantID' => @client.tenant_id},
          skip_encoding_path_params: {'applicationObjectId' => application_object_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :patch, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Gets passwordCredentials associated with an existing application. Reference:
    # https://msdn.microsoft.com/en-us/library/azure/ad/graph/api/entity-and-complex-type-reference#passwordcredential-type
    #
    # @param application_object_id [String] Application object id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PasswordCredentialListResult] operation results.
    #
    def list_password_credentials(application_object_id, custom_headers = nil)
      response = list_password_credentials_async(application_object_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets passwordCredentials associated with an existing application. Reference:
    # https://msdn.microsoft.com/en-us/library/azure/ad/graph/api/entity-and-complex-type-reference#passwordcredential-type
    #
    # @param application_object_id [String] Application object id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_password_credentials_with_http_info(application_object_id, custom_headers = nil)
      list_password_credentials_async(application_object_id, custom_headers).value!
    end

    #
    # Gets passwordCredentials associated with an existing application. Reference:
    # https://msdn.microsoft.com/en-us/library/azure/ad/graph/api/entity-and-complex-type-reference#passwordcredential-type
    #
    # @param application_object_id [String] Application object id
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_password_credentials_async(application_object_id, custom_headers = nil)
      fail ArgumentError, 'application_object_id is nil' if application_object_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/{tenantID}/applications/{applicationObjectId}/passwordCredentials'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'tenantID' => @client.tenant_id},
          skip_encoding_path_params: {'applicationObjectId' => application_object_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = PasswordCredentialListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Updates passwordCredentials associated with an existing application.
    # Reference:
    # https://msdn.microsoft.com/en-us/library/azure/ad/graph/api/entity-and-complex-type-reference#passwordcredential-type
    #
    # @param application_object_id [String] Application object id
    # @param parameters [PasswordCredentialsUpdateParameters] Parameters to update
    # passwordCredentials of an existing application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def update_password_credentials(application_object_id, parameters, custom_headers = nil)
      response = update_password_credentials_async(application_object_id, parameters, custom_headers).value!
      nil
    end

    #
    # Updates passwordCredentials associated with an existing application.
    # Reference:
    # https://msdn.microsoft.com/en-us/library/azure/ad/graph/api/entity-and-complex-type-reference#passwordcredential-type
    #
    # @param application_object_id [String] Application object id
    # @param parameters [PasswordCredentialsUpdateParameters] Parameters to update
    # passwordCredentials of an existing application.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_password_credentials_with_http_info(application_object_id, parameters, custom_headers = nil)
      update_password_credentials_async(application_object_id, parameters, custom_headers).value!
    end

    #
    # Updates passwordCredentials associated with an existing application.
    # Reference:
    # https://msdn.microsoft.com/en-us/library/azure/ad/graph/api/entity-and-complex-type-reference#passwordcredential-type
    #
    # @param application_object_id [String] Application object id
    # @param parameters [PasswordCredentialsUpdateParameters] Parameters to update
    # passwordCredentials of an existing application.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_password_credentials_async(application_object_id, parameters, custom_headers = nil)
      fail ArgumentError, 'application_object_id is nil' if application_object_id.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.tenant_id is nil' if @client.tenant_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = PasswordCredentialsUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters, 'parameters')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '/{tenantID}/applications/{applicationObjectId}/passwordCredentials'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'tenantID' => @client.tenant_id},
          skip_encoding_path_params: {'applicationObjectId' => application_object_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :patch, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
