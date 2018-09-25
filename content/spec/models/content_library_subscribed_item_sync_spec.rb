=begin
#content

#VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VSphereAutomation::Content::ContentLibrarySubscribedItemSync
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContentLibrarySubscribedItemSync' do
  before do
    # run before each test
    @instance = VSphereAutomation::Content::ContentLibrarySubscribedItemSync.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContentLibrarySubscribedItemSync' do
    it 'should create an instance of ContentLibrarySubscribedItemSync' do
      expect(@instance).to be_instance_of(VSphereAutomation::Content::ContentLibrarySubscribedItemSync)
    end
  end
  describe 'test attribute "force_sync_content"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
