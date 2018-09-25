=begin
#appliance

#The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VSphereAutomation::Appliance::ApplianceUpdatePendingStageAndInstall
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ApplianceUpdatePendingStageAndInstall' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::ApplianceUpdatePendingStageAndInstall.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApplianceUpdatePendingStageAndInstall' do
    it 'should create an instance of ApplianceUpdatePendingStageAndInstall' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::ApplianceUpdatePendingStageAndInstall)
    end
  end
  describe 'test attribute "user_data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
