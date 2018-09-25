=begin
#appliance

#The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::HealthDatabasestorageApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HealthDatabasestorageApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::HealthDatabasestorageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HealthDatabasestorageApi' do
    it 'should create an instance of HealthDatabasestorageApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::HealthDatabasestorageApi)
    end
  end

  # unit tests for get
  # Get database storage health.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceHealthDatabasestorageResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
