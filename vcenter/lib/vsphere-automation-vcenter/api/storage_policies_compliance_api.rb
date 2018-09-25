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
  class StoragePoliciesComplianceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns compliance information about entities matching the filter Compliance.FilterSpec. Entities without storage policy association are not returned.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_status Compliance Status that a virtual machine must have to match the filter.
    # @return [VcenterStoragePoliciesComplianceListResult]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns compliance information about entities matching the filter Compliance.FilterSpec. Entities without storage policy association are not returned.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :filter_status Compliance Status that a virtual machine must have to match the filter.
    # @return [Array<(VcenterStoragePoliciesComplianceListResult, Fixnum, Hash)>] VcenterStoragePoliciesComplianceListResult data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StoragePoliciesComplianceApi.list ...'
      end
      if @api_client.config.client_side_validation && opts[:'filter_status'] && !opts[:'filter_status'].all? { |item| ['COMPLIANT', 'NON_COMPLIANT', 'UNKNOWN', 'NOT_APPLICABLE', 'OUT_OF_DATE'].include?(item) }
        fail ArgumentError, 'invalid value for "filter_status", must include one of COMPLIANT, NON_COMPLIANT, UNKNOWN, NOT_APPLICABLE, OUT_OF_DATE'
      end
      # resource path
      local_var_path = '/vcenter/storage/policies/entities/compliance'

      # query parameters
      query_params = {}
      query_params[:'filter.status'] = @api_client.build_collection_param(opts[:'filter_status'], :multi) if !opts[:'filter_status'].nil?

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
        :return_type => 'VCenter::VcenterStoragePoliciesComplianceListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoragePoliciesComplianceApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
