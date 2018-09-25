=begin
#vcenter

#VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::VMApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VMApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VMApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VMApi' do
    it 'should create an instance of VMApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VMApi)
    end
  end

  # unit tests for create
  # Creates a virtual machine.
  # @param [Hash] opts the optional parameters
  # @option opts [VcenterVMCreate] :vcenter_vm_create 
  # @return [VcenterVMCreateResult]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Deletes a virtual machine.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Returns information about a virtual machine.
  # @param vm Virtual machine identifier. The parameter must be an identifier for the resource type: VirtualMachine.
  # @param [Hash] opts the optional parameters
  # @return [VcenterVMResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns information about at most 1000 visible (subject to permission checks) virtual machines in vCenter matching the VM.FilterSpec.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filter_vms Identifiers of virtual machines that can match the filter. If unset or empty, virtual machines with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: VirtualMachine. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: VirtualMachine.
  # @option opts [Array<String>] :filter_names Names that virtual machines must have to match the filter (see VM.Info.name). If unset or empty, virtual machines with any name match the filter.
  # @option opts [Array<String>] :filter_folders Folders that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
  # @option opts [Array<String>] :filter_datacenters Datacenters that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
  # @option opts [Array<String>] :filter_hosts Hosts that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines on any host match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: HostSystem. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: HostSystem.
  # @option opts [Array<String>] :filter_clusters Clusters that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any cluster match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ClusterComputeResource. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ClusterComputeResource.
  # @option opts [Array<String>] :filter_resource_pools Resource pools that must contain the virtual machine for the virtual machine to match the filter. If unset or empty, virtual machines in any resource pool match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: ResourcePool. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: ResourcePool.
  # @option opts [Array<String>] :filter_power_states Power states that a virtual machine must be in to match the filter (see Power.Info.state. If unset or empty, virtual machines in any power state match the filter.
  # @return [VcenterVMListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
