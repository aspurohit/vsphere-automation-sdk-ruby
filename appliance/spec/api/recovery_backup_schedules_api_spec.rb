=begin
#appliance

#The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for VSphereAutomation::Appliance::RecoveryBackupSchedulesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RecoveryBackupSchedulesApi' do
  before do
    # run before each test
    @instance = VSphereAutomation::Appliance::RecoveryBackupSchedulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RecoveryBackupSchedulesApi' do
    it 'should create an instance of RecoveryBackupSchedulesApi' do
      expect(@instance).to be_instance_of(VSphereAutomation::Appliance::RecoveryBackupSchedulesApi)
    end
  end

  # unit tests for create
  # Creates a schedule
  # @param schedule Identifier of the schedule
  # @param [Hash] opts the optional parameters
  # @option opts [ApplianceRecoveryBackupSchedulesCreate] :appliance_recovery_backup_schedules_create 
  # @return [nil]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # Deletes an existing schedule
  # @param schedule Identifier of the schedule
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Returns an existing schedule information based on id
  # @param schedule Identifier of the schedule
  # @param [Hash] opts the optional parameters
  # @return [ApplianceRecoveryBackupSchedulesResult]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Returns a list of existing schedules with details
  # @param [Hash] opts the optional parameters
  # @return [ApplianceRecoveryBackupSchedulesListResult]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for run
  # Initiate backup with the specified schedule
  # @param schedule Identifier of the schedule
  # @param appliance_recovery_backup_schedules_run 
  # @param [Hash] opts the optional parameters
  # @return [ApplianceRecoveryBackupSchedulesRunResult]
  describe 'run test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Updates a schedule
  # @param schedule Identifier of the schedule
  # @param [Hash] opts the optional parameters
  # @option opts [ApplianceRecoveryBackupSchedulesUpdate] :appliance_recovery_backup_schedules_update 
  # @return [nil]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
