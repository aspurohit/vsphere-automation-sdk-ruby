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

# Unit tests for VSphereAutomation::Content::ContentLibraryItemFileChecksumInfo
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContentLibraryItemFileChecksumInfo' do
  before do
    # run before each test
    @instance = VSphereAutomation::Content::ContentLibraryItemFileChecksumInfo.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContentLibraryItemFileChecksumInfo' do
    it 'should create an instance of ContentLibraryItemFileChecksumInfo' do
      expect(@instance).to be_instance_of(VSphereAutomation::Content::ContentLibraryItemFileChecksumInfo)
    end
  end
  describe 'test attribute "algorithm"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "checksum"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
