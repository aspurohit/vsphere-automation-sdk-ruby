=begin
#vcenter

#VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::DeploymentUpgradeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DeploymentUpgradeApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::DeploymentUpgradeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeploymentUpgradeApi' do
    it 'should create an instance of DeploymentUpgradeApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::DeploymentUpgradeApi)
    end
  end

  # unit tests for cancel
  # Cancel the appliance upgrade that is in progress.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for check
  # Run sanity checks using the UpgradeSpec parameters passed.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterDeploymentUpgradeCheck] :vcenter_deployment_upgrade_check 
  # @return [VcenterDeploymentUpgradeCheckResult]
  describe 'check test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Get the UpgradeSpec parameters used to configure the ongoing appliance upgrade.
  # @param [Hash] opts the optional parameters
  # @return [VcenterDeploymentUpgradeResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start
  # Start the appliance installation.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterDeploymentUpgradeStart] :vcenter_deployment_upgrade_start 
  # @return [nil]
  describe 'start test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
