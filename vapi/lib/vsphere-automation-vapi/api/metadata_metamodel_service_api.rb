# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vapi - vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.


require 'uri'

module VSphereAutomation
  module VAPI
  class MetadataMetamodelServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves information about the service element corresponding to {@param.name serviceId}. <p> The {@link ServiceInfo} contains the metamodel information for the operation elements, structure elements and enumeration elements contained in the service element.
    # @param service_id Identifier of the service element.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataMetamodelServiceResult|VapiStdErrorsNotFoundError|]
    def get(service_id, opts = {})
      data, _status_code, _headers = get_with_http_info(service_id, opts)
      data
    end

    # Retrieves information about the service element corresponding to {@param.name serviceId}. &lt;p&gt; The {@link ServiceInfo} contains the metamodel information for the operation elements, structure elements and enumeration elements contained in the service element.
    # @api private
    # @param service_id Identifier of the service element.
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataMetamodelServiceResult|VapiStdErrorsNotFoundError|, Fixnum, Hash)>]  data, response status code and response headers
    def get_with_http_info(service_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataMetamodelServiceApi.get ...'
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling MetadataMetamodelServiceApi.get"
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/metamodel/service/id:{service_id}'.sub('{' + 'service_id' + '}', service_id.to_s)

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
	:return_type => {
	  '200' => 'VAPI::VapiMetadataMetamodelServiceResult',
	  '404' => 'VAPI::VapiStdErrorsNotFoundError',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataMetamodelServiceApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the identifiers for the service elements that are currently registered with the infrastructure. <p> The list of service elements is an aggregate list of all the service elements contained in all the package elements.
    # @param [Hash] opts the optional parameters
    # @return [VapiMetadataMetamodelServiceListResult|]
    def list(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Returns the identifiers for the service elements that are currently registered with the infrastructure. &lt;p&gt; The list of service elements is an aggregate list of all the service elements contained in all the package elements.
    # @api private
    # @param [Hash] opts the optional parameters
    # @return [Array<(VapiMetadataMetamodelServiceListResult|, Fixnum, Hash)>]  data, response status code and response headers
    def list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataMetamodelServiceApi.list ...'
      end
      # resource path
      local_var_path = '/com/vmware/vapi/metadata/metamodel/service'

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
	:return_type => {
	  '200' => 'VAPI::VapiMetadataMetamodelServiceListResult',
	})
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataMetamodelServiceApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  end
end
