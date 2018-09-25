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
  class InventoryNetworkApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns network information for the specified vCenter Server networks. The key in the {@term result} {@term map} is the network identifier and the value in the {@term map} is the network information.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterInventoryNetworkFind] :vcenter_inventory_network_find 
    # @return [VcenterInventoryNetworkFindResult]
    def find(opts = {})
      data, _status_code, _headers = find_with_http_info(opts)
      data
    end

    # Returns network information for the specified vCenter Server networks. The key in the {@term result} {@term map} is the network identifier and the value in the {@term map} is the network information.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterInventoryNetworkFind] :vcenter_inventory_network_find 
    # @return [Array<(VcenterInventoryNetworkFindResult, Fixnum, Hash)>] VcenterInventoryNetworkFindResult data, response status code and response headers
    def find_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InventoryNetworkApi.find ...'
      end
      # resource path
      local_var_path = '/com/vmware/vcenter/inventory/network?~action=find'

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
      post_body = @api_client.object_to_http_body(opts[:'vcenter_inventory_network_find'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VCenter::VcenterInventoryNetworkFindResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InventoryNetworkApi#find\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
