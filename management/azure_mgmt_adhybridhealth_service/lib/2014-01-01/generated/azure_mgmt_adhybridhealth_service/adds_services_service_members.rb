# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  #
  # REST APIs for Azure Active Directory Connect Health
  #
  class AddsServicesServiceMembers
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AddsServicesServiceMembers class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ADHybridHealthService] reference to the ADHybridHealthService
    attr_reader :client

    #
    # Gets the details of the servers, for a given Active Directory Domain
    # Controller service, that are onboarded to Azure Active Directory Connect
    # Health Service.
    #
    # @param service_name [String] The name of the service.
    # @param filter [String] The server property filter to apply.
    # @param dimension_type [String] The server specific dimension.
    # @param dimension_signature [String] The value of the dimension.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ServiceMember>] operation results.
    #
    def list(service_name, filter:nil, dimension_type:nil, dimension_signature:nil, custom_headers:nil)
      first_page = list_as_lazy(service_name, filter:filter, dimension_type:dimension_type, dimension_signature:dimension_signature, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets the details of the servers, for a given Active Directory Domain
    # Controller service, that are onboarded to Azure Active Directory Connect
    # Health Service.
    #
    # @param service_name [String] The name of the service.
    # @param filter [String] The server property filter to apply.
    # @param dimension_type [String] The server specific dimension.
    # @param dimension_signature [String] The value of the dimension.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(service_name, filter:nil, dimension_type:nil, dimension_signature:nil, custom_headers:nil)
      list_async(service_name, filter:filter, dimension_type:dimension_type, dimension_signature:dimension_signature, custom_headers:custom_headers).value!
    end

    #
    # Gets the details of the servers, for a given Active Directory Domain
    # Controller service, that are onboarded to Azure Active Directory Connect
    # Health Service.
    #
    # @param service_name [String] The name of the service.
    # @param filter [String] The server property filter to apply.
    # @param dimension_type [String] The server specific dimension.
    # @param dimension_signature [String] The value of the dimension.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(service_name, filter:nil, dimension_type:nil, dimension_signature:nil, custom_headers:nil)
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.ADHybridHealthService/addsservices/{serviceName}/servicemembers'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'serviceName' => service_name},
          query_params: {'$filter' => filter,'dimensionType' => dimension_type,'dimensionSignature' => dimension_signature,'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ServiceMembers.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Onboards  a server, for a given Active Directory Domain Controller service,
    # to Azure Active Directory Connect Health Service.
    #
    # @param service_name [String] The name of the service under which the server
    # is to be onboarded.
    # @param service_member [ServiceMember] The server object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceMember] operation results.
    #
    def add(service_name, service_member, custom_headers:nil)
      response = add_async(service_name, service_member, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Onboards  a server, for a given Active Directory Domain Controller service,
    # to Azure Active Directory Connect Health Service.
    #
    # @param service_name [String] The name of the service under which the server
    # is to be onboarded.
    # @param service_member [ServiceMember] The server object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def add_with_http_info(service_name, service_member, custom_headers:nil)
      add_async(service_name, service_member, custom_headers:custom_headers).value!
    end

    #
    # Onboards  a server, for a given Active Directory Domain Controller service,
    # to Azure Active Directory Connect Health Service.
    #
    # @param service_name [String] The name of the service under which the server
    # is to be onboarded.
    # @param service_member [ServiceMember] The server object.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def add_async(service_name, service_member, custom_headers:nil)
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'service_member is nil' if service_member.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ServiceMember.mapper()
      request_content = @client.serialize(request_mapper,  service_member)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'providers/Microsoft.ADHybridHealthService/addsservices/{serviceName}/servicemembers'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'serviceName' => service_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ServiceMember.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the details of the servers, for a given Active Directory Domain
    # Controller service, that are onboarded to Azure Active Directory Connect
    # Health Service.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceMembers] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the details of the servers, for a given Active Directory Domain
    # Controller service, that are onboarded to Azure Active Directory Connect
    # Health Service.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers:nil)
      list_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets the details of the servers, for a given Active Directory Domain
    # Controller service, that are onboarded to Azure Active Directory Connect
    # Health Service.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::ServiceMembers.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the details of the servers, for a given Active Directory Domain
    # Controller service, that are onboarded to Azure Active Directory Connect
    # Health Service.
    #
    # @param service_name [String] The name of the service.
    # @param filter [String] The server property filter to apply.
    # @param dimension_type [String] The server specific dimension.
    # @param dimension_signature [String] The value of the dimension.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceMembers] which provide lazy access to pages of the response.
    #
    def list_as_lazy(service_name, filter:nil, dimension_type:nil, dimension_signature:nil, custom_headers:nil)
      response = list_async(service_name, filter:filter, dimension_type:dimension_type, dimension_signature:dimension_signature, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
