=begin
#vapi

#vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VSphereAutomation::VAPI::VapiMetadataMetamodelStructureInfoType
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VapiMetadataMetamodelStructureInfoType' do
  before do
    # run before each test
    @instance = VSphereAutomation::VAPI::VapiMetadataMetamodelStructureInfoType.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VapiMetadataMetamodelStructureInfoType' do
    it 'should create an instance of VapiMetadataMetamodelStructureInfoType' do
      expect(@instance).to be_instance_of(VSphereAutomation::VAPI::VapiMetadataMetamodelStructureInfoType)
    end
  end
end
