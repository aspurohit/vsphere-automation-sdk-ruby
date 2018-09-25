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

# Unit tests for VSphereAutomation::VCenter::VcenterVchaClusterActiveGet
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VcenterVchaClusterActiveGet' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::VcenterVchaClusterActiveGet.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VcenterVchaClusterActiveGet' do
    it 'should create an instance of VcenterVchaClusterActiveGet' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::VcenterVchaClusterActiveGet)
    end
  end
  describe 'test attribute "vc_spec"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "partial"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
