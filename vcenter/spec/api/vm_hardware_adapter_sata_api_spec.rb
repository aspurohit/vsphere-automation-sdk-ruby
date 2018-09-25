=begin
#vcenter

#VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::VmHardwareAdapterSataApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VmHardwareAdapterSataApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VmHardwareAdapterSataApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VmHardwareAdapterSataApi' do
    it 'should create an instance of VmHardwareAdapterSataApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VmHardwareAdapterSataApi)
    end
  end

  # unit tests for create
  # Adds a virtual SATA adapter to the virtual machine.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterVmHardwareAdapterSataCreate] :vcenter_vm_hardware_adapter_sata_create 
  # @return [VcenterVmHardwareAdapterSataCreateResult]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Removes a virtual SATA adapter from the virtual machine.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param adapter Virtual SATA adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SataAdapter.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Returns information about a virtual SATA adapter.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param adapter Virtual SATA adapter identifier. The parameter must be an identifier for the resource type: vcenter.vm.hardware.SataAdapter.
  # @param [Hash] opts the optional parameters
  # @return [VcenterVmHardwareAdapterSataResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns commonly used information about the virtual SATA adapters belonging to the virtual machine.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param [Hash] opts the optional parameters
  # @return [VcenterVmHardwareAdapterSataListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
