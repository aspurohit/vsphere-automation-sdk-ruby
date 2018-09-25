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
  class TechpreviewMonitoringSnmpApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Stop an enabled SNMP agent.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def disable(opts = {})
      disable_with_http_info(opts)
      nil
    end

    # Stop an enabled SNMP agent.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def disable_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TechpreviewMonitoringSnmpApi.disable ...'
      end
      # resource path
      local_var_path = '/appliance/techpreview/monitoring/snmp/disable'

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
        @api_client.config.logger.debug "API called: TechpreviewMonitoringSnmpApi#disable\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Start a disabled SNMP agent.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def enable(opts = {})
      enable_with_http_info(opts)
      nil
    end

    # Start a disabled SNMP agent.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def enable_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TechpreviewMonitoringSnmpApi.enable ...'
      end
      # resource path
      local_var_path = '/appliance/techpreview/monitoring/snmp/enable'

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
        @api_client.config.logger.debug "API called: TechpreviewMonitoringSnmpApi#enable\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return an SNMP agent configuration.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceTechpreviewMonitoringSnmpResult]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Return an SNMP agent configuration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceTechpreviewMonitoringSnmpResult, Fixnum, Hash)>] ApplianceTechpreviewMonitoringSnmpResult data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TechpreviewMonitoringSnmpApi.get ...'
      end
      # resource path
      local_var_path = '/appliance/techpreview/monitoring/snmp'

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
        :return_type => 'Appliance::ApplianceTechpreviewMonitoringSnmpResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TechpreviewMonitoringSnmpApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Generate localized keys for secure SNMPv3 communications.
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceTechpreviewMonitoringSnmpHash] :appliance_techpreview_monitoring_snmp_hash 
    # @return [ApplianceTechpreviewMonitoringSnmpHashResult]
    def hash(opts = {})
      data, _status_code, _headers = hash_with_http_info(opts)
      data
    end

    # Generate localized keys for secure SNMPv3 communications.
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceTechpreviewMonitoringSnmpHash] :appliance_techpreview_monitoring_snmp_hash 
    # @return [Array<(ApplianceTechpreviewMonitoringSnmpHashResult, Fixnum, Hash)>] ApplianceTechpreviewMonitoringSnmpHashResult data, response status code and response headers
    def hash_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TechpreviewMonitoringSnmpApi.hash ...'
      end
      # resource path
      local_var_path = '/appliance/techpreview/monitoring/snmp/hash'

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
      post_body = @api_client.object_to_http_body(opts[:'appliance_techpreview_monitoring_snmp_hash'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Appliance::ApplianceTechpreviewMonitoringSnmpHashResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TechpreviewMonitoringSnmpApi#hash\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get SNMP limits information.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceTechpreviewMonitoringSnmpLimitsResult]
    def limits(opts = {})
      data, _status_code, _headers = limits_with_http_info(opts)
      data
    end

    # Get SNMP limits information.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceTechpreviewMonitoringSnmpLimitsResult, Fixnum, Hash)>] ApplianceTechpreviewMonitoringSnmpLimitsResult data, response status code and response headers
    def limits_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TechpreviewMonitoringSnmpApi.limits ...'
      end
      # resource path
      local_var_path = '/appliance/techpreview/monitoring/snmp/limits'

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
        :return_type => 'Appliance::ApplianceTechpreviewMonitoringSnmpLimitsResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TechpreviewMonitoringSnmpApi#limits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Restore settings to factory defaults.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def reset(opts = {})
      reset_with_http_info(opts)
      nil
    end

    # Restore settings to factory defaults.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def reset_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TechpreviewMonitoringSnmpApi.reset ...'
      end
      # resource path
      local_var_path = '/appliance/techpreview/monitoring/snmp/reset'

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
        @api_client.config.logger.debug "API called: TechpreviewMonitoringSnmpApi#reset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set SNMP configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceTechpreviewMonitoringSnmpSet] :appliance_techpreview_monitoring_snmp_set 
    # @return [nil]
    def set(opts = {})
      set_with_http_info(opts)
      nil
    end

    # Set SNMP configuration.
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceTechpreviewMonitoringSnmpSet] :appliance_techpreview_monitoring_snmp_set 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TechpreviewMonitoringSnmpApi.set ...'
      end
      # resource path
      local_var_path = '/appliance/techpreview/monitoring/snmp'

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
      post_body = @api_client.object_to_http_body(opts[:'appliance_techpreview_monitoring_snmp_set'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TechpreviewMonitoringSnmpApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Generate diagnostics report for snmp agent.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceTechpreviewMonitoringSnmpStatsResult]
    def stats(opts = {})
      data, _status_code, _headers = stats_with_http_info(opts)
      data
    end

    # Generate diagnostics report for snmp agent.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceTechpreviewMonitoringSnmpStatsResult, Fixnum, Hash)>] ApplianceTechpreviewMonitoringSnmpStatsResult data, response status code and response headers
    def stats_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TechpreviewMonitoringSnmpApi.stats ...'
      end
      # resource path
      local_var_path = '/appliance/techpreview/monitoring/snmp/stats'

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
        :return_type => 'Appliance::ApplianceTechpreviewMonitoringSnmpStatsResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TechpreviewMonitoringSnmpApi#stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Send a warmStart notification to all configured traps and inform destinations (see RFC 3418).
    # @param [Hash] opts the optional parameters
    # @return [ApplianceTechpreviewMonitoringSnmpTestResult]
    def test(opts = {})
      data, _status_code, _headers = test_with_http_info(opts)
      data
    end

    # Send a warmStart notification to all configured traps and inform destinations (see RFC 3418).
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceTechpreviewMonitoringSnmpTestResult, Fixnum, Hash)>] ApplianceTechpreviewMonitoringSnmpTestResult data, response status code and response headers
    def test_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TechpreviewMonitoringSnmpApi.test ...'
      end
      # resource path
      local_var_path = '/appliance/techpreview/monitoring/snmp/test'

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
        :return_type => 'Appliance::ApplianceTechpreviewMonitoringSnmpTestResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TechpreviewMonitoringSnmpApi#test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
