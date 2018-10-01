=begin
#vcenter

#VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VSphereAutomation::VCenter::VcenterVmStoragePolicyUpdate
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VcenterVmStoragePolicyUpdate' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VcenterVmStoragePolicyUpdate.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VcenterVmStoragePolicyUpdate' do
    it 'should create an instance of VcenterVmStoragePolicyUpdate' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VcenterVmStoragePolicyUpdate)
    end
  end
  describe 'test attribute "spec"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end