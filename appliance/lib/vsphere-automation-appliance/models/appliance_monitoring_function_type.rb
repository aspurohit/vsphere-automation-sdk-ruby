=begin
#appliance

#The vCenter Server Appliance is a preconfigured Linux-based virtual machine optimized for running vCenter Server and associated services.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'date'

module VSphereAutomation
  module Appliance
    class ApplianceMonitoringFunctionType
    
    COUNT = 'COUNT'.freeze
    MAX = 'MAX'.freeze
    AVG = 'AVG'.freeze
    MIN = 'MIN'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ApplianceMonitoringFunctionType.constants.select { |c| ApplianceMonitoringFunctionType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ApplianceMonitoringFunctionType" if constantValues.empty?
      value
    end
  end
  end
end
