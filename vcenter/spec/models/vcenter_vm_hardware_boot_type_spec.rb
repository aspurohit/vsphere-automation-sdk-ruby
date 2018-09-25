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

# Unit tests for VSphereAutomation::VCenter::VcenterVmHardwareBootType
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VcenterVmHardwareBootType' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VcenterVmHardwareBootType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VcenterVmHardwareBootType' do
    it 'should create an instance of VcenterVmHardwareBootType' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VcenterVmHardwareBootType)
    end
  end
end
