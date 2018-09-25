=begin
#appliance

#The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::ServicesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ServicesApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::ServicesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ServicesApi' do
    it 'should create an instance of ServicesApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::ServicesApi)
    end
  end

  # unit tests for get
  # Returns the state of a service.
  # @param service identifier of the service whose state is being queried.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceServicesResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Lists details of vCenter services.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceServicesListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for restart
  # Restarts a service
  # @param service identifier of the service to restart
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'restart test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start
  # Starts a service
  # @param service identifier of the service to start
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'start test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for stop
  # Stops a service
  # @param service identifier of the service to stop
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'stop test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
