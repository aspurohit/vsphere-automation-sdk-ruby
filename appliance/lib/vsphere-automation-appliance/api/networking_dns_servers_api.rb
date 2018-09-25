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
  class NetworkingDnsServersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a DNS server. This method fails if mode argument is \"dhcp\"
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceNetworkingDnsServersAdd] :appliance_networking_dns_servers_add 
    # @return [nil]
    def add(opts = {})
      add_with_http_info(opts)
      nil
    end

    # Add a DNS server. This method fails if mode argument is \&quot;dhcp\&quot;
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceNetworkingDnsServersAdd] :appliance_networking_dns_servers_add 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingDnsServersApi.add ...'
      end
      # resource path
      local_var_path = '/appliance/networking/dns/servers'

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
      post_body = @api_client.object_to_http_body(opts[:'appliance_networking_dns_servers_add'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingDnsServersApi#add\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get DNS server configuration.
    # @param [Hash] opts the optional parameters
    # @return [ApplianceNetworkingDnsServersResult]
    def get(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get DNS server configuration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplianceNetworkingDnsServersResult, Fixnum, Hash)>] ApplianceNetworkingDnsServersResult data, response status code and response headers
    def get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingDnsServersApi.get ...'
      end
      # resource path
      local_var_path = '/appliance/networking/dns/servers'

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
        :return_type => 'Appliance::ApplianceNetworkingDnsServersResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingDnsServersApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set the DNS server configuration. If you set the mode argument to \"DHCP\", a DHCP refresh is forced.
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceNetworkingDnsServersSet] :appliance_networking_dns_servers_set 
    # @return [nil]
    def set(opts = {})
      set_with_http_info(opts)
      nil
    end

    # Set the DNS server configuration. If you set the mode argument to \&quot;DHCP\&quot;, a DHCP refresh is forced.
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceNetworkingDnsServersSet] :appliance_networking_dns_servers_set 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingDnsServersApi.set ...'
      end
      # resource path
      local_var_path = '/appliance/networking/dns/servers'

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
      post_body = @api_client.object_to_http_body(opts[:'appliance_networking_dns_servers_set'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingDnsServersApi#set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Test if dns servers are reachable.
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceNetworkingDnsServersTest] :appliance_networking_dns_servers_test 
    # @return [ApplianceNetworkingDnsServersTestResult]
    def test(opts = {})
      data, _status_code, _headers = test_with_http_info(opts)
      data
    end

    # Test if dns servers are reachable.
    # @param [Hash] opts the optional parameters
    # @option opts [ApplianceNetworkingDnsServersTest] :appliance_networking_dns_servers_test 
    # @return [Array<(ApplianceNetworkingDnsServersTestResult, Fixnum, Hash)>] ApplianceNetworkingDnsServersTestResult data, response status code and response headers
    def test_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkingDnsServersApi.test ...'
      end
      # resource path
      local_var_path = '/appliance/networking/dns/servers/test'

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
      post_body = @api_client.object_to_http_body(opts[:'appliance_networking_dns_servers_test'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Appliance::ApplianceNetworkingDnsServersTestResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkingDnsServersApi#test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
