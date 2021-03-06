# Copyright (c) 2018-2019 VMware, Inc.  All Rights Reserved.
# SPDX-License-Identifier: MIT

# DO NOT MODIFY. THIS CODE IS GENERATED. CHANGES WILL BE OVERWRITTEN.

# vcenter - VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments


require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::VCenter::DeploymentInstallRemotePscApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DeploymentInstallRemotePscApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::VCenter::DeploymentInstallRemotePscApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeploymentInstallRemotePscApi' do
    it 'should create an instance of DeploymentInstallRemotePscApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::VCenter::DeploymentInstallRemotePscApi)
    end
  end

  # unit tests for check
  # Checks whether the remote PSC is reachable and the deployed vCenter Server can be registered with the remote PSC.
  # @param vcenter_deployment_install_remote_psc_check 
  # @param [Hash] opts the optional parameters
  # @return [VcenterDeploymentInstallRemotePscCheckResult]
  describe 'check test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
