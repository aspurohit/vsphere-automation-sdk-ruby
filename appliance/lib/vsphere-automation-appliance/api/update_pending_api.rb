=begin
#appliance

#The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'uri'

module VSphereAutomation
  module Appliance
  class UpdatePendingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets update information
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @return [ApplianceUpdatePendingResult]
    def get(version, opts = {})
      data, _status_code, _headers = get_with_http_info(version, opts)
      data
    end

    # Gets update information
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceUpdatePendingResult, Fixnum, Hash)>] ApplianceUpdatePendingResult data, response status code and response headers
    def get_with_http_info(version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePendingApi.get ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling UpdatePendingApi.get"
      end
      # resource path
      local_var_path = '/appliance/update/pending/{version}'.sub('{' + 'version' + '}', version.to_s)

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
        :return_type => 'Appliance::ApplianceUpdatePendingResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePendingApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Starts operation of installing the appliance update. Will fail is the update is not staged
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceUpdatePendingInstall] :appliance_update_pending_install 
    # @return [nil]
    def install(version, opts = {})
      install_with_http_info(version, opts)
      nil
    end

    # Starts operation of installing the appliance update. Will fail is the update is not staged
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceUpdatePendingInstall] :appliance_update_pending_install 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def install_with_http_info(version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePendingApi.install ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling UpdatePendingApi.install"
      end
      # resource path
      local_var_path = '/appliance/update/pending/{version}?action=install'.sub('{' + 'version' + '}', version.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'appliance_update_pending_install'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePendingApi#install\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Checks if new updates are available.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceUpdatePendingListResult]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Checks if new updates are available.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceUpdatePendingListResult, Fixnum, Hash)>] ApplianceUpdatePendingListResult data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePendingApi.list ...'
      end
      # resource path
      local_var_path = '/appliance/update/pending'

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
        :return_type => 'Appliance::ApplianceUpdatePendingListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePendingApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Runs update precheck
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @return [ApplianceUpdatePendingPrecheckResult]
    def precheck(version, opts = {})
      data, _status_code, _headers = precheck_with_http_info(version, opts)
      data
    end

    # Runs update precheck
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceUpdatePendingPrecheckResult, Fixnum, Hash)>] ApplianceUpdatePendingPrecheckResult data, response status code and response headers
    def precheck_with_http_info(version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePendingApi.precheck ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling UpdatePendingApi.precheck"
      end
      # resource path
      local_var_path = '/appliance/update/pending/{version}?action=precheck'.sub('{' + 'version' + '}', version.to_s)

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
        :return_type => 'Appliance::ApplianceUpdatePendingPrecheckResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePendingApi#precheck\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Starts staging the appliance update. The updates are searched for in the following order: staged, CDROM, URL
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def stage(version, opts = {})
      stage_with_http_info(version, opts)
      nil
    end

    # Starts staging the appliance update. The updates are searched for in the following order: staged, CDROM, URL
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def stage_with_http_info(version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePendingApi.stage ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling UpdatePendingApi.stage"
      end
      # resource path
      local_var_path = '/appliance/update/pending/{version}?action=stage'.sub('{' + 'version' + '}', version.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePendingApi#stage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Starts operation of installing the appliance update. Will stage update if not already staged The updates are searched for in the following order: staged, CDROM, URL
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceUpdatePendingStageAndInstall] :appliance_update_pending_stage_and_install 
    # @return [nil]
    def stage_and_install(version, opts = {})
      stage_and_install_with_http_info(version, opts)
      nil
    end

    # Starts operation of installing the appliance update. Will stage update if not already staged The updates are searched for in the following order: staged, CDROM, URL
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceUpdatePendingStageAndInstall] :appliance_update_pending_stage_and_install 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def stage_and_install_with_http_info(version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePendingApi.stage_and_install ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling UpdatePendingApi.stage_and_install"
      end
      # resource path
      local_var_path = '/appliance/update/pending/{version}?action=stage-and-install'.sub('{' + 'version' + '}', version.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'appliance_update_pending_stage_and_install'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePendingApi#stage_and_install\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Validates the user provided data before the update installation.
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceUpdatePendingValidate] :appliance_update_pending_validate 
    # @return [ApplianceUpdatePendingValidateResult]
    def validate(version, opts = {})
      data, _status_code, _headers = validate_with_http_info(version, opts)
      data
    end

    # Validates the user provided data before the update installation.
    # @param version Update version
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceUpdatePendingValidate] :appliance_update_pending_validate 
    # @return [Array<(ApplianceUpdatePendingValidateResult, Fixnum, Hash)>] ApplianceUpdatePendingValidateResult data, response status code and response headers
    def validate_with_http_info(version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UpdatePendingApi.validate ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling UpdatePendingApi.validate"
      end
      # resource path
      local_var_path = '/appliance/update/pending/{version}?action=validate'.sub('{' + 'version' + '}', version.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'appliance_update_pending_validate'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Appliance::ApplianceUpdatePendingValidateResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UpdatePendingApi#validate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
