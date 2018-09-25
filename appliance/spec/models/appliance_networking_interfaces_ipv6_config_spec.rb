=begin
#appliance

#The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Config
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ApplianceNetworkingInterfacesIpv6Config' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Config.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApplianceNetworkingInterfacesIpv6Config' do
    it 'should create an instance of ApplianceNetworkingInterfacesIpv6Config' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::ApplianceNetworkingInterfacesIpv6Config)
    end
  end
  describe 'test attribute "dhcp"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "autoconf"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "addresses"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "default_gateway"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
