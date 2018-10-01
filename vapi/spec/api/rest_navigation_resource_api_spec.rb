=begin
#vapi

#vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VAPI::RestNavigationResourceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RestNavigationResourceApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VAPI::RestNavigationResourceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RestNavigationResourceApi' do
    it 'should create an instance of RestNavigationResourceApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VAPI::RestNavigationResourceApi)
    end
  end

  # unit tests for get
  # Gets {@link List} of all {@link Operation}s about a vAPI REST {@link Resource}. Information is searched for by {@param.name typeId} and {@param.name instanceId} is used only in URLs.
  # @param type_id Resource type id.
  # @param instance_id Resource instance id.
  # @param [Hash] opts the optional parameters
  # @return [VapiRestNavigationResourceResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Gets list of all vAPI REST {@link Resource}s.
  # @param [Hash] opts the optional parameters
  # @return [VapiRestNavigationResourceListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end