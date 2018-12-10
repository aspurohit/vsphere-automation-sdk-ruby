=begin
#vcenter

#VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterVmHardwareSerialBackingType
    
    FILE = 'FILE'.freeze
    HOST_DEVICE = 'HOST_DEVICE'.freeze
    PIPE_SERVER = 'PIPE_SERVER'.freeze
    PIPE_CLIENT = 'PIPE_CLIENT'.freeze
    NETWORK_SERVER = 'NETWORK_SERVER'.freeze
    NETWORK_CLIENT = 'NETWORK_CLIENT'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterVmHardwareSerialBackingType.constants.select { |c| VcenterVmHardwareSerialBackingType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterVmHardwareSerialBackingType" if constantValues.empty?
      value
    end
  end
  end
end
