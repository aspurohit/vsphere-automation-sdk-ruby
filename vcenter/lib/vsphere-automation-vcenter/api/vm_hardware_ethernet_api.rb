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
  class VmHardwareEthernetApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Connects a virtual Ethernet adapter of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the connected state when the virtual machine is powered on. 
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param nic Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def connect(vm, nic, opts = {})
      connect_with_http_info(vm, nic, opts)
      nil
    end

    # Connects a virtual Ethernet adapter of a powered-on virtual machine to its backing. Connecting the virtual device makes the backing accessible from the perspective of the guest operating system.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the connected state when the virtual machine is powered on. 
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param nic Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def connect_with_http_info(vm, nic, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareEthernetApi.connect ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareEthernetApi.connect"
      end
      # verify the required parameter 'nic' is set
      if @api_client.config.client_side_validation && nic.nil?
        fail ArgumentError, "Missing the required parameter 'nic' when calling VmHardwareEthernetApi.connect"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/ethernet/{nic}/connect'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'nic' + '}', nic.to_s)

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
        @api_client.config.logger.debug "API called: VmHardwareEthernetApi#connect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Adds a virtual Ethernet adapter to the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmHardwareEthernetCreate] :vcenter_vm_hardware_ethernet_create 
    # @return [VcenterVmHardwareEthernetCreateResult]
    def create(vm, opts = {})
      data, _status_code, _headers = create_with_http_info(vm, opts)
      data
    end

    # Adds a virtual Ethernet adapter to the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmHardwareEthernetCreate] :vcenter_vm_hardware_ethernet_create 
    # @return [Array<(VcenterVmHardwareEthernetCreateResult, Fixnum, Hash)>] VcenterVmHardwareEthernetCreateResult data, response status code and response headers
    def create_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareEthernetApi.create ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareEthernetApi.create"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/ethernet'.sub('{' + 'vm' + '}', vm.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'vcenter_vm_hardware_ethernet_create'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VCenter::VcenterVmHardwareEthernetCreateResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareEthernetApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Removes a virtual Ethernet adapter from the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param nic Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(vm, nic, opts = {})
      delete_with_http_info(vm, nic, opts)
      nil
    end

    # Removes a virtual Ethernet adapter from the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param nic Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(vm, nic, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareEthernetApi.delete ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareEthernetApi.delete"
      end
      # verify the required parameter 'nic' is set
      if @api_client.config.client_side_validation && nic.nil?
        fail ArgumentError, "Missing the required parameter 'nic' when calling VmHardwareEthernetApi.delete"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/ethernet/{nic}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'nic' + '}', nic.to_s)

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
        @api_client.config.logger.debug "API called: VmHardwareEthernetApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Disconnects a virtual Ethernet adapter of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the Ethernet adapter is not connected to its backing resource.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the disconnected state when the virtual machine is powered on. 
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param nic Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def disconnect(vm, nic, opts = {})
      disconnect_with_http_info(vm, nic, opts)
      nil
    end

    # Disconnects a virtual Ethernet adapter of a powered-on virtual machine from its backing. The virtual device is still present and its backing configuration is unchanged, but from the perspective of the guest operating system, the Ethernet adapter is not connected to its backing resource.   For a powered-off virtual machine, the Ethernet.update operation may be used to configure the virtual Ethernet adapter to start in the disconnected state when the virtual machine is powered on. 
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param nic Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def disconnect_with_http_info(vm, nic, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareEthernetApi.disconnect ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareEthernetApi.disconnect"
      end
      # verify the required parameter 'nic' is set
      if @api_client.config.client_side_validation && nic.nil?
        fail ArgumentError, "Missing the required parameter 'nic' when calling VmHardwareEthernetApi.disconnect"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/ethernet/{nic}/disconnect'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'nic' + '}', nic.to_s)

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
        @api_client.config.logger.debug "API called: VmHardwareEthernetApi#disconnect\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about a virtual Ethernet adapter.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param nic Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmHardwareEthernetResult]
    def get(vm, nic, opts = {})
      data, _status_code, _headers = get_with_http_info(vm, nic, opts)
      data
    end

    # Returns information about a virtual Ethernet adapter.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param nic Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmHardwareEthernetResult, Fixnum, Hash)>] VcenterVmHardwareEthernetResult data, response status code and response headers
    def get_with_http_info(vm, nic, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareEthernetApi.get ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareEthernetApi.get"
      end
      # verify the required parameter 'nic' is set
      if @api_client.config.client_side_validation && nic.nil?
        fail ArgumentError, "Missing the required parameter 'nic' when calling VmHardwareEthernetApi.get"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/ethernet/{nic}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'nic' + '}', nic.to_s)

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
        :return_type => 'VCenter::VcenterVmHardwareEthernetResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareEthernetApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns commonly used information about the virtual Ethernet adapters belonging to the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmHardwareEthernetListResult]
    def list(vm, opts = {})
      data, _status_code, _headers = list_with_http_info(vm, opts)
      data
    end

    # Returns commonly used information about the virtual Ethernet adapters belonging to the virtual machine.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmHardwareEthernetListResult, Fixnum, Hash)>] VcenterVmHardwareEthernetListResult data, response status code and response headers
    def list_with_http_info(vm, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareEthernetApi.list ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareEthernetApi.list"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/ethernet'.sub('{' + 'vm' + '}', vm.to_s)

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
        :return_type => 'VCenter::VcenterVmHardwareEthernetListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareEthernetApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the configuration of a virtual Ethernet adapter.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param nic Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmHardwareEthernetUpdate] :vcenter_vm_hardware_ethernet_update 
    # @return [nil]
    def update(vm, nic, opts = {})
      update_with_http_info(vm, nic, opts)
      nil
    end

    # Updates the configuration of a virtual Ethernet adapter.
    # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
    # @param nic Virtual Ethernet adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.Ethernet.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmHardwareEthernetUpdate] :vcenter_vm_hardware_ethernet_update 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_with_http_info(vm, nic, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmHardwareEthernetApi.update ...'
      end
      # verify the required parameter 'vm' is set
      if @api_client.config.client_side_validation && vm.nil?
        fail ArgumentError, "Missing the required parameter 'vm' when calling VmHardwareEthernetApi.update"
      end
      # verify the required parameter 'nic' is set
      if @api_client.config.client_side_validation && nic.nil?
        fail ArgumentError, "Missing the required parameter 'nic' when calling VmHardwareEthernetApi.update"
      end
      # resource path
      local_var_path = '/vcenter/vm/{vm}/hardware/ethernet/{nic}'.sub('{' + 'vm' + '}', vm.to_s).sub('{' + 'nic' + '}', nic.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'vcenter_vm_hardware_ethernet_update'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmHardwareEthernetApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
