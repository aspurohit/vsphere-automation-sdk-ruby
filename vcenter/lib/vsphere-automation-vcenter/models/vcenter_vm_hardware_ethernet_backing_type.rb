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
    class VcenterVmHardwareEthernetBackingType
    
    STANDARD_PORTGROUP = 'STANDARD_PORTGROUP'.freeze
    HOST_DEVICE = 'HOST_DEVICE'.freeze
    DISTRIBUTED_PORTGROUP = 'DISTRIBUTED_PORTGROUP'.freeze
    OPAQUE_NETWORK = 'OPAQUE_NETWORK'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterVmHardwareEthernetBackingType.constants.select { |c| VcenterVmHardwareEthernetBackingType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterVmHardwareEthernetBackingType" if constantValues.empty?
      value
    end
  end
  end
end
