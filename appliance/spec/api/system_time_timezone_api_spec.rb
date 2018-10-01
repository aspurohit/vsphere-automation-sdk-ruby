=begin
#appliance

#The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::SystemTimeTimezoneApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SystemTimeTimezoneApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::SystemTimeTimezoneApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SystemTimeTimezoneApi' do
    it 'should create an instance of SystemTimeTimezoneApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::SystemTimeTimezoneApi)
    end
  end

  # unit tests for get
  # Get time zone.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceSystemTimeTimezoneResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set
  # Set time zone.
  # @param [Hash] opts the optional parameters
  # @option opts [ApplianceSystemTimeTimezoneSet] :appliance_system_time_timezone_set 
  # @return [nil]
  describe 'set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end