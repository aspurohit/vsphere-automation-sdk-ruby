=begin
#cis

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module VSphereAutomation
  module CIS
  class SessionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a session with the API. This is the equivalent of login. This operation exchanges user credentials supplied in the security context for a session identifier that is to be used for authenticating subsequent calls. To authenticate subsequent calls clients are expected to include the session key.
    # @param vmware_use_header_authn Custom header to protect against CSRF attacks in browser based clients
    # @param [Hash] opts the optional parameters
    # @return [CisSessionCreateResult|VapiStdErrorsUnauthenticatedError|VapiStdErrorsServiceUnavailableError|]
    def create(vmware_use_header_authn, opts = {})
      data, _status_code, _headers = create_with_http_info(vmware_use_header_authn, opts)
      data
    end

    # Creates a session with the API. This is the equivalent of login. This operation exchanges user credentials supplied in the security context for a session identifier that is to be used for authenticating subsequent calls. To authenticate subsequent calls clients are expected to include the session key.
    # @param vmware_use_header_authn Custom header to protect against CSRF attacks in browser based clients
    # @param [Hash] opts the optional parameters
    # @return [Array<(CisSessionCreateResult|VapiStdErrorsUnauthenticatedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    private def create_with_http_info(vmware_use_header_authn, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.create ...'
      end
      # verify the required parameter 'vmware_use_header_authn' is set
      if @api_client.config.client_side_validation && vmware_use_header_authn.nil?
        fail ArgumentError, "Missing the required parameter 'vmware_use_header_authn' when calling SessionApi.create"
      end
      # resource path
      local_var_path = '/com/vmware/cis/session'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      header_params[:'vmware-use-header-authn'] = vmware_use_header_authn

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'CIS::CisSessionCreateResult',
	  '401' => 'CIS::VapiStdErrorsUnauthenticatedError',
	  '503' => 'CIS::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Terminates the validity of a session token. This is the equivalent of log out.   A session identifier is expected as part of the request.    
    # @param [Hash] opts the optional parameters
    # @return [|VapiStdErrorsUnauthenticatedError|VapiStdErrorsServiceUnavailableError|nil]
    def delete(opts = {})
      delete_with_http_info(opts)
      nil
    end

    # Terminates the validity of a session token. This is the equivalent of log out.   A session identifier is expected as part of the request.    
    # @param [Hash] opts the optional parameters
    # @return [Array<(|VapiStdErrorsUnauthenticatedError|VapiStdErrorsServiceUnavailableError|nil, Fixnum, Hash)>] nil, response status code and response headers
    private def delete_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.delete ...'
      end
      # resource path
      local_var_path = '/com/vmware/cis/session'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about the current session. This operation expects a valid session identifier to be supplied.   A side effect of invoking this operation may be a change to the session's last accessed time to the current time if this is supported by the session implementation. Invoking any other operation in the API will also update the session's last accessed time.    This API is meant to serve the needs of various front end projects that may want to display the name of the user. Examples of this include various web based user interfaces and logging facilities. 
    # @param [Hash] opts the optional parameters
    # @return [CisSessionResult|VapiStdErrorsUnauthenticatedError|VapiStdErrorsServiceUnavailableError|]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Returns information about the current session. This operation expects a valid session identifier to be supplied.   A side effect of invoking this operation may be a change to the session&#39;s last accessed time to the current time if this is supported by the session implementation. Invoking any other operation in the API will also update the session&#39;s last accessed time.    This API is meant to serve the needs of various front end projects that may want to display the name of the user. Examples of this include various web based user interfaces and logging facilities. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CisSessionResult|VapiStdErrorsUnauthenticatedError|VapiStdErrorsServiceUnavailableError|, Fixnum, Hash)>]  data, response status code and response headers
    private def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SessionApi.get ...'
      end
      # resource path
      local_var_path = '/com/vmware/cis/session?~action=get'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
	:return_type => {
	  '200' => 'CIS::CisSessionResult',
	  '401' => 'CIS::VapiStdErrorsUnauthenticatedError',
	  '503' => 'CIS::VapiStdErrorsServiceUnavailableError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SessionApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
