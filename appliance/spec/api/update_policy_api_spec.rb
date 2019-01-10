=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance

# The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::UpdatePolicyApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UpdatePolicyApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::UpdatePolicyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UpdatePolicyApi' do
    it 'should create an instance of UpdatePolicyApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::UpdatePolicyApi)
    end
  end

  # unit tests for get
  # Gets the automatic update checking and staging policy.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceUpdatePolicyResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set
  # Sets the automatic update checking and staging policy.
  # @param appliance_update_policy_set 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
