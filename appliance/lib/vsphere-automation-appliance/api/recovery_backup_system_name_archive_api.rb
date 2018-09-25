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
  class RecoveryBackupSystemNameArchiveApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the information for backup corresponding to given backup location and system name.
    # @param system_name System name identifier.
    # @param archive Archive identifier.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceRecoveryBackupSystemNameArchiveResult]
    def get(system_name, archive, opts = {})
      data, _status_code, _headers = get_with_http_info(system_name, archive, opts)
      data
    end

    # Returns the information for backup corresponding to given backup location and system name.
    # @param system_name System name identifier.
    # @param archive Archive identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceRecoveryBackupSystemNameArchiveResult, Fixnum, Hash)>] ApplianceRecoveryBackupSystemNameArchiveResult data, response status code and response headers
    def get_with_http_info(system_name, archive, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupSystemNameArchiveApi.get ...'
      end
      # verify the required parameter 'system_name' is set
      if @api_client.config.client_side_validation && system_name.nil?
        fail ArgumentError, "Missing the required parameter 'system_name' when calling RecoveryBackupSystemNameArchiveApi.get"
      end
      # verify the required parameter 'archive' is set
      if @api_client.config.client_side_validation && archive.nil?
        fail ArgumentError, "Missing the required parameter 'archive' when calling RecoveryBackupSystemNameArchiveApi.get"
      end
      # resource path
      local_var_path = '/appliance/recovery/backup/system-name/{system_name}/archives/{archive}'.sub('{' + 'system_name' + '}', system_name.to_s).sub('{' + 'archive' + '}', archive.to_s)

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
        :return_type => 'Appliance::ApplianceRecoveryBackupSystemNameArchiveResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupSystemNameArchiveApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about backup archives corresponding to given backup location and system name, which match the {@link FilterSpec}.
    # @param system_name System name identifier.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceRecoveryBackupSystemNameArchiveListResult]
    def list(system_name, opts = {})
      data, _status_code, _headers = list_with_http_info(system_name, opts)
      data
    end

    # Returns information about backup archives corresponding to given backup location and system name, which match the {@link FilterSpec}.
    # @param system_name System name identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceRecoveryBackupSystemNameArchiveListResult, Fixnum, Hash)>] ApplianceRecoveryBackupSystemNameArchiveListResult data, response status code and response headers
    def list_with_http_info(system_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RecoveryBackupSystemNameArchiveApi.list ...'
      end
      # verify the required parameter 'system_name' is set
      if @api_client.config.client_side_validation && system_name.nil?
        fail ArgumentError, "Missing the required parameter 'system_name' when calling RecoveryBackupSystemNameArchiveApi.list"
      end
      # resource path
      local_var_path = '/appliance/recovery/backup/system-name/{system_name}/archives'.sub('{' + 'system_name' + '}', system_name.to_s)

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
        :return_type => 'Appliance::ApplianceRecoveryBackupSystemNameArchiveListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecoveryBackupSystemNameArchiveApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
