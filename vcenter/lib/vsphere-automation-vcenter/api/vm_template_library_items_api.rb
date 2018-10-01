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
  class VmTemplateLibraryItemsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a library item in content library from a virtual machine. This {@term operation} creates a library item in content library whose content is a virtual machine template created from the source virtual machine, using the supplied create specification. The virtual machine template is stored in a newly created library item.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmTemplateLibraryItemsCreate] :vcenter_vm_template_library_items_create 
    # @return [VcenterVmTemplateLibraryItemsCreateResult]
    def create(opts = {})
      data, _status_code, _headers = create_with_http_info(opts)
      data
    end

    # Creates a library item in content library from a virtual machine. This {@term operation} creates a library item in content library whose content is a virtual machine template created from the source virtual machine, using the supplied create specification. The virtual machine template is stored in a newly created library item.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmTemplateLibraryItemsCreate] :vcenter_vm_template_library_items_create 
    # @return [Array<(VcenterVmTemplateLibraryItemsCreateResult, Fixnum, Hash)>] VcenterVmTemplateLibraryItemsCreateResult data, response status code and response headers
    def create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsApi.create ...'
      end
      # resource path
      local_var_path = '/vcenter/vm-template/library-items'

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
      post_body = @api_client.object_to_http_body(opts[:'vcenter_vm_template_library_items_create'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VCenter::VcenterVmTemplateLibraryItemsCreateResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deploys a virtual machine as a copy of the source virtual machine template contained in the library item specified by {@param.name templateLibraryItem}. It uses the deployment specification in {@param.name spec}. If {@link DeploySpec#poweredOn} and/or {@link DeploySpec#guestCustomization} are specified, the server triggers the power on and/or guest customization operations, which are executed asynchronously.
    # @param template_library_item identifier of the content library item containing the source virtual machine template to be deployed.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmTemplateLibraryItemsDeploy] :vcenter_vm_template_library_items_deploy 
    # @return [VcenterVmTemplateLibraryItemsDeployResult]
    def deploy(template_library_item, opts = {})
      data, _status_code, _headers = deploy_with_http_info(template_library_item, opts)
      data
    end

    # Deploys a virtual machine as a copy of the source virtual machine template contained in the library item specified by {@param.name templateLibraryItem}. It uses the deployment specification in {@param.name spec}. If {@link DeploySpec#poweredOn} and/or {@link DeploySpec#guestCustomization} are specified, the server triggers the power on and/or guest customization operations, which are executed asynchronously.
    # @param template_library_item identifier of the content library item containing the source virtual machine template to be deployed.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVmTemplateLibraryItemsDeploy] :vcenter_vm_template_library_items_deploy 
    # @return [Array<(VcenterVmTemplateLibraryItemsDeployResult, Fixnum, Hash)>] VcenterVmTemplateLibraryItemsDeployResult data, response status code and response headers
    def deploy_with_http_info(template_library_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsApi.deploy ...'
      end
      # verify the required parameter 'template_library_item' is set
      if @api_client.config.client_side_validation && template_library_item.nil?
        fail ArgumentError, "Missing the required parameter 'template_library_item' when calling VmTemplateLibraryItemsApi.deploy"
      end
      # resource path
      local_var_path = '/vcenter/vm-template/library-items/{template_library_item}?action=deploy'.sub('{' + 'template_library_item' + '}', template_library_item.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'vcenter_vm_template_library_items_deploy'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VCenter::VcenterVmTemplateLibraryItemsDeployResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsApi#deploy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns information about a virtual machine template contained in the library item specified by {@param.name templateLibraryItem}
    # @param template_library_item identifier of the library item containing the virtual machine template.
    # @param [Hash] opts the optional parameters
    # @return [VcenterVmTemplateLibraryItemsResult]
    def get(template_library_item, opts = {})
      data, _status_code, _headers = get_with_http_info(template_library_item, opts)
      data
    end

    # Returns information about a virtual machine template contained in the library item specified by {@param.name templateLibraryItem}
    # @param template_library_item identifier of the library item containing the virtual machine template.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVmTemplateLibraryItemsResult, Fixnum, Hash)>] VcenterVmTemplateLibraryItemsResult data, response status code and response headers
    def get_with_http_info(template_library_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VmTemplateLibraryItemsApi.get ...'
      end
      # verify the required parameter 'template_library_item' is set
      if @api_client.config.client_side_validation && template_library_item.nil?
        fail ArgumentError, "Missing the required parameter 'template_library_item' when calling VmTemplateLibraryItemsApi.get"
      end
      # resource path
      local_var_path = '/vcenter/vm-template/library-items/{template_library_item}'.sub('{' + 'template_library_item' + '}', template_library_item.to_s)

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
        :return_type => 'VCenter::VcenterVmTemplateLibraryItemsResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VmTemplateLibraryItemsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end