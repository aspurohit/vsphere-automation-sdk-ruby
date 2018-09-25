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
  class VchaClusterApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Prepares, clones, and configures a VCHA cluster.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVchaClusterDeploytask] :vcenter_vcha_cluster_deploytask 
    # @return [VcenterVchaClusterDeploytaskResult]
    def deploytask(opts = {})
      data, _status_code, _headers = deploytask_with_http_info(opts)
      data
    end

    # Prepares, clones, and configures a VCHA cluster.
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVchaClusterDeploytask] :vcenter_vcha_cluster_deploytask 
    # @return [Array<(VcenterVchaClusterDeploytaskResult, Fixnum, Hash)>] VcenterVchaClusterDeploytaskResult data, response status code and response headers
    def deploytask_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VchaClusterApi.deploytask ...'
      end
      # resource path
      local_var_path = '/vcenter/vcha/cluster?action=deploy'

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
      post_body = @api_client.object_to_http_body(opts[:'vcenter_vcha_cluster_deploytask'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VCenter::VcenterVchaClusterDeploytaskResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VchaClusterApi#deploytask\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Initiates failover from the active vCenter node to the passive node.   For forced failover, Active node immediately initiates a failover. This may result into a data loss after failover.    For planned failover, Active node flushes all the state to the Passive node, waits for the flush to complete before causing a failover. After the failover, Passive node starts without any data loss.    A failover is allowed only in the following cases:      1.  Cluster's mode is enabled and all cluster members are present.    2.  Cluster's mode is maintenance and all cluster members are present. 
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVchaClusterFailovertask] :vcenter_vcha_cluster_failovertask 
    # @return [VcenterVchaClusterFailovertaskResult]
    def failovertask(opts = {})
      data, _status_code, _headers = failovertask_with_http_info(opts)
      data
    end

    # Initiates failover from the active vCenter node to the passive node.   For forced failover, Active node immediately initiates a failover. This may result into a data loss after failover.    For planned failover, Active node flushes all the state to the Passive node, waits for the flush to complete before causing a failover. After the failover, Passive node starts without any data loss.    A failover is allowed only in the following cases:      1.  Cluster&#39;s mode is enabled and all cluster members are present.    2.  Cluster&#39;s mode is maintenance and all cluster members are present. 
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVchaClusterFailovertask] :vcenter_vcha_cluster_failovertask 
    # @return [Array<(VcenterVchaClusterFailovertaskResult, Fixnum, Hash)>] VcenterVchaClusterFailovertaskResult data, response status code and response headers
    def failovertask_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VchaClusterApi.failovertask ...'
      end
      # resource path
      local_var_path = '/vcenter/vcha/cluster?action=failover'

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
      post_body = @api_client.object_to_http_body(opts[:'vcenter_vcha_cluster_failovertask'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VCenter::VcenterVchaClusterFailovertaskResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VchaClusterApi#failovertask\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieves the status of a VCHA cluster.
    # @param vcenter_vcha_cluster_get 
    # @param [Hash] opts the optional parameters
    # @return [VcenterVchaClusterResult]
    def get(vcenter_vcha_cluster_get, opts = {})
      data, _status_code, _headers = get_with_http_info(vcenter_vcha_cluster_get, opts)
      data
    end

    # Retrieves the status of a VCHA cluster.
    # @param vcenter_vcha_cluster_get 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VcenterVchaClusterResult, Fixnum, Hash)>] VcenterVchaClusterResult data, response status code and response headers
    def get_with_http_info(vcenter_vcha_cluster_get, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VchaClusterApi.get ...'
      end
      # verify the required parameter 'vcenter_vcha_cluster_get' is set
      if @api_client.config.client_side_validation && vcenter_vcha_cluster_get.nil?
        fail ArgumentError, "Missing the required parameter 'vcenter_vcha_cluster_get' when calling VchaClusterApi.get"
      end
      # resource path
      local_var_path = '/vcenter/vcha/cluster?action=get'

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
      post_body = @api_client.object_to_http_body(vcenter_vcha_cluster_get)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VCenter::VcenterVchaClusterResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VchaClusterApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Destroys the VCHA cluster and removes all VCHA specific information from the VCVA appliance. Optionally, the passive and witness node virtual machines will be deleted only if VCHA was deployed using automatic deployment. The active node in the cluster continues to run as a standalone VCVA appliance after the destroy operation has been performed.   If the VCHA cluster is in a transition state and not configured, then the VCHA cluster specific information is removed. 
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVchaClusterUndeploytask] :vcenter_vcha_cluster_undeploytask 
    # @return [VcenterVchaClusterUndeploytaskResult]
    def undeploytask(opts = {})
      data, _status_code, _headers = undeploytask_with_http_info(opts)
      data
    end

    # Destroys the VCHA cluster and removes all VCHA specific information from the VCVA appliance. Optionally, the passive and witness node virtual machines will be deleted only if VCHA was deployed using automatic deployment. The active node in the cluster continues to run as a standalone VCVA appliance after the destroy operation has been performed.   If the VCHA cluster is in a transition state and not configured, then the VCHA cluster specific information is removed. 
    # @param [Hash] opts the optional parameters
    # @option opts [VcenterVchaClusterUndeploytask] :vcenter_vcha_cluster_undeploytask 
    # @return [Array<(VcenterVchaClusterUndeploytaskResult, Fixnum, Hash)>] VcenterVchaClusterUndeploytaskResult data, response status code and response headers
    def undeploytask_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VchaClusterApi.undeploytask ...'
      end
      # resource path
      local_var_path = '/vcenter/vcha/cluster?action=undeploy'

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
      post_body = @api_client.object_to_http_body(opts[:'vcenter_vcha_cluster_undeploytask'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VCenter::VcenterVchaClusterUndeploytaskResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VchaClusterApi#undeploytask\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
