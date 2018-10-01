=begin
#vcenter

#VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::DeploymentInstallApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DeploymentInstallApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::DeploymentInstallApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeploymentInstallApi' do
    it 'should create an instance of DeploymentInstallApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::DeploymentInstallApi)
    end
  end

  # unit tests for cancel
  # Cancel the appliance installation that is in progress.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for check
  # Run sanity checks using the InstallSpec parameters passed.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterDeploymentInstallCheck] :vcenter_deployment_install_check 
  # @return [VcenterDeploymentInstallCheckResult]
  describe 'check test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Get the parameters used to configure the ongoing appliance installation.
  # @param [Hash] opts the optional parameters
  # @return [VcenterDeploymentInstallResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for start
  # Start the appliance installation.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterDeploymentInstallStart] :vcenter_deployment_install_start 
  # @return [nil]
  describe 'start test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end