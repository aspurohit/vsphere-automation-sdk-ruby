# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# appliance - The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TechpreviewMonitoringSnmpApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TechpreviewMonitoringSnmpApi' do
    it 'should create an instance of TechpreviewMonitoringSnmpApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::TechpreviewMonitoringSnmpApi)
    end
  end

  # unit tests for disable
  # Stop an enabled SNMP agent.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'disable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for enable
  # Start a disabled SNMP agent.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'enable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Return an SNMP agent configuration.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceTechpreviewMonitoringSnmpResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for hash
  # Generate localized keys for secure SNMPv3 communications.
  # @param appliance_techpreview_monitoring_snmp_hash 
  # @param [Hash] opts the optional parameters
  # @return [ApplianceTechpreviewMonitoringSnmpHashResult]
  describe 'hash test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for limits
  # Get SNMP limits information.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceTechpreviewMonitoringSnmpLimitsResult]
  describe 'limits test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reset
  # Restore settings to factory defaults.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'reset test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set
  # Set SNMP configuration.
  # @param appliance_techpreview_monitoring_snmp_set 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for stats
  # Generate diagnostics report for snmp agent.
  # @param [Hash] opts the optional parameters
  # @return [ApplianceTechpreviewMonitoringSnmpStatsResult]
  describe 'stats test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for test
  # Send a warmStart notification to all configured traps and inform destinations (see RFC 3418).
  # @param [Hash] opts the optional parameters
  # @return [ApplianceTechpreviewMonitoringSnmpTestResult]
  describe 'test test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
