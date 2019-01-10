=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter

# VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::DatastoreApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DatastoreApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::DatastoreApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DatastoreApi' do
    it 'should create an instance of DatastoreApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::DatastoreApi)
    end
  end

  # unit tests for get
  # Retrieves information about the datastore indicated by datastore.
  # @param datastore Identifier of the datastore for which information should be retrieved. The parameter must be an identifier for the resource type: Datastore.
  # @param [Hash] opts the optional parameters
  # @return [VcenterDatastoreResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns information about at most 1000 visible (subject to permission checks) datastores in vCenter matching the Datastore.FilterSpec.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :filter_datastores Identifiers of datastores that can match the filter. If unset or empty, datastores with any identifier match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datastore. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datastore.
  # @option opts [Array<String>] :filter_names Names that datastores must have to match the filter (see Datastore.Info.name). If unset or empty, datastores with any name match the filter.
  # @option opts [Array<String>] :filter_types Types that datastores must have to match the filter (see Datastore.Summary.type). If unset or empty, datastores with any type match the filter.
  # @option opts [Array<String>] :filter_folders Folders that must contain the datastore for the datastore to match the filter. If unset or empty, datastores in any folder match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Folder. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Folder.
  # @option opts [Array<String>] :filter_datacenters Datacenters that must contain the datastore for the datastore to match the filter. If unset or empty, datastores in any datacenter match the filter. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: Datacenter. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: Datacenter.
  # @return [VcenterDatastoreListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
