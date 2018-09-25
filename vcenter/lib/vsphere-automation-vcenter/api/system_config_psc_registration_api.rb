=begin
#vcenter

#VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'uri'

module VSphereAutomation
  module VCenter
  class SystemConfigPscRegistrationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get information of the PSC that this appliance is registered with.
    # @param [Hash] opts the optional parameters
    # @return [VcenterSystemConfigPscRegistrationResult]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get information of the PSC that this appliance is registered with.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterSystemConfigPscRegistrationResult, Fixnum, Hash)>] VcenterSystemConfigPscRegistrationResult data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemConfigPscRegistrationApi.get ...'
      end
      # resource path
      local_var_path = '/vcenter/system-config/psc-registration'

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
        :return_type => 'VCenter::VcenterSystemConfigPscRegistrationResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemConfigPscRegistrationApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Repoint this vCenter Server appliance to a different external PSC.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterSystemConfigPscRegistrationRepoint] :vcenter_system_config_psc_registration_repoint 
    # @return [nil]
    def repoint(opts = {})
      repoint_with_http_info(opts)
      nil
    end

    # Repoint this vCenter Server appliance to a different external PSC.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterSystemConfigPscRegistrationRepoint] :vcenter_system_config_psc_registration_repoint 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def repoint_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemConfigPscRegistrationApi.repoint ...'
      end
      # resource path
      local_var_path = '/vcenter/system-config/psc-registration'

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
      post_body = @api_client.object_to_http_body(opts[:'vcenter_system_config_psc_registration_repoint'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemConfigPscRegistrationApi#repoint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
