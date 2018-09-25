=begin
#vapi

#vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VAPI::MetadataPrivilegeServiceOperationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MetadataPrivilegeServiceOperationApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VAPI::MetadataPrivilegeServiceOperationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MetadataPrivilegeServiceOperationApi' do
    it 'should create an instance of MetadataPrivilegeServiceOperationApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VAPI::MetadataPrivilegeServiceOperationApi)
    end
  end

  # unit tests for get
  # Retrieves the privilege information about an operation element corresponding to {@param.name operationId} contained in the service element corresponding to {@param.name serviceId}.
  # @param service_id Identifier of the service element.
  # @param [Hash] opts the optional parameters
  # @option opts [VapiMetadataPrivilegeServiceOperationGet] :vapi_metadata_privilege_service_operation_get 
  # @return [VapiMetadataPrivilegeServiceOperationResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns the identifiers for the operation elements contained in the service element corresponding to {@param.name serviceId} that have privilege information.
  # @param [Hash] opts the optional parameters
  # @return [VapiMetadataPrivilegeServiceOperationListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
