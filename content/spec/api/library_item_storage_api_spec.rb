=begin
# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# content

# VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.


=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Content::LibraryItemStorageApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LibraryItemStorageApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Content::LibraryItemStorageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LibraryItemStorageApi' do
    it 'should create an instance of LibraryItemStorageApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Content::LibraryItemStorageApi)
    end
  end

  # unit tests for get
  # Retrieves the storage information for a specific file in a library item.
  # @param library_item_id Identifier of the library item whose storage information should be retrieved.
  # @param content_library_item_storage_get 
  # @param [Hash] opts the optional parameters
  # @return [ContentLibraryItemStorageResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Lists all storage items for a given library item.
  # @param library_item_id Identifier of the library item whose storage information should be listed.
  # @param [Hash] opts the optional parameters
  # @return [ContentLibraryItemStorageListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
