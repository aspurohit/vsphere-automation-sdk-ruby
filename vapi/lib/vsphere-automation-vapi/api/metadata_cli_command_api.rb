=begin
#vapi

#vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'uri'

module VSphereAutomation
  module VAPI
  class MetadataCliCommandApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the aggregate fingerprint of all the command metadata from all the metadata sources. <p> The fingerprint provides clients an efficient way to check if the metadata for commands has been modified on the server.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataCliCommandFingerprintResult]
    def fingerprint(opts = {})
      data, _status_code, _headers = fingerprint_with_http_info(opts)
      data
    end

    # Returns the aggregate fingerprint of all the command metadata from all the metadata sources. &lt;p&gt; The fingerprint provides clients an efficient way to check if the metadata for commands has been modified on the server.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataCliCommandFingerprintResult, Fixnum, Hash)>] VapiMetadataCliCommandFingerprintResult data, response status code and response headers
    def fingerprint_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataCliCommandApi.fingerprint ...'
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/cli/command?~action=fingerprint'

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
        :return_type => 'VAPI::VapiMetadataCliCommandFingerprintResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataCliCommandApi#fingerprint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves information about a command including information about how to execute that command.
    # @param [Hash] opts the optional parameters
    # @option opts [VapiMetadataCliCommandGet] :vapi_metadata_cli_command_get 
    # @return [VapiMetadataCliCommandResult]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Retrieves information about a command including information about how to execute that command.
    # @param [Hash] opts the optional parameters
    # @option opts [VapiMetadataCliCommandGet] :vapi_metadata_cli_command_get 
    # @return [Array<(VapiMetadataCliCommandResult, Fixnum, Hash)>] VapiMetadataCliCommandResult data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataCliCommandApi.get ...'
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/cli/command?~action=get'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'vapi_metadata_cli_command_get'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VAPI::VapiMetadataCliCommandResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataCliCommandApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers of all commands, or commands in a specific namespace.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataCliCommandListResult]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the identifiers of all commands, or commands in a specific namespace.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataCliCommandListResult, Fixnum, Hash)>] VapiMetadataCliCommandListResult data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataCliCommandApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/cli/command'

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VAPI::VapiMetadataCliCommandListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataCliCommandApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
