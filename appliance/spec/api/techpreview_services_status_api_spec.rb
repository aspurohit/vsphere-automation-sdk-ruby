=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::TechpreviewServicesStatusApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TechpreviewServicesStatusApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::TechpreviewServicesStatusApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TechpreviewServicesStatusApi' do
    it 'should create an instance of TechpreviewServicesStatusApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::TechpreviewServicesStatusApi)
    end
  end

  # unit tests for get
  # Get status of a service.
  # @param appliance_techpreview_services_status_get 
  # @param [Hash] opts the optional parameters
  # @return [ApplianceTechpreviewServicesStatusResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
