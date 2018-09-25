=begin
#vcenter

#VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::VchaOperationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VchaOperationsApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VchaOperationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VchaOperationsApi' do
    it 'should create an instance of VchaOperationsApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VchaOperationsApi)
    end
  end

  # unit tests for get
  # Retrieves the current active and disabled operations of a VCHA cluster.
  # @param [Hash] opts the optional parameters
  # @return [VcenterVchaOperationsResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
