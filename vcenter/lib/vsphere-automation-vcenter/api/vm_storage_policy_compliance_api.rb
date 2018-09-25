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
  class VmStoragePolicyComplianceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the storage policy Compliance Compliance.Info of a virtual machine after explicitly re-computing compliance check.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param vcenter_vm_storage_policy_compliance_check 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmStoragePolicyComplianceCheckResult]
    def check(vm, vcenter_vm_storage_policy_compliance_check, opts = {})
      data, _status_code, _headers = check_with_http_info(vm, vcenter_vm_storage_policy_compliance_check, opts)
      data
    end

    # Returns the storage policy Compliance Compliance.Info of a virtual machine after explicitly re-computing compliance check.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param vcenter_vm_storage_policy_compliance_check 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmStoragePolicyComplianceCheckResult, Fixnum, Hash)>] VcenterVmStoragePolicyComplianceCheckResult data, response status code and response headers
    def check_with_http_info(vm, vcenter_vm_storage_policy_compliance_check, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmStoragePolicyComplianceApi.check ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmStoragePolicyComplianceApi.check"
      end
      # verify the required parameter 'vcenter_vm_storage_policy_compliance_check' is set
      if @api_client.config.client_side_validation && vcenter_vm_storage_policy_compliance_check.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vm_storage_policy_compliance_check' when calling VmStoragePolicyComplianceApi.check"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/storage/policy/compliance?action=check'.sub('{' + 'vm' + '}', vm.to_s)

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
      post_body = @api_client.object_to_http_body(vcenter_vm_storage_policy_compliance_check)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VCenter::VcenterVmStoragePolicyComplianceCheckResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmStoragePolicyComplianceApi#check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the cached storage policy compliance information of a virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmStoragePolicyComplianceResult]
    def get(vm, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, opts)
      data
    end

    # Returns the cached storage policy compliance information of a virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmStoragePolicyComplianceResult, Fixnum, Hash)>] VcenterVmStoragePolicyComplianceResult data, response status code and response headers
    def get_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmStoragePolicyComplianceApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmStoragePolicyComplianceApi.get"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/storage/policy/compliance'.sub('{' + 'vm' + '}', vm.to_s)

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
        :return_type => 'VCenter::VcenterVmStoragePolicyComplianceResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmStoragePolicyComplianceApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
