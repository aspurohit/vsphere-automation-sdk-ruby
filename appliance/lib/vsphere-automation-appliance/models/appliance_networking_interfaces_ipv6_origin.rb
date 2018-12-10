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
    class ApplianceNetworkingInterfacesIpv6Origin
    
    DHCP = 'DHCP'.freeze
    RANDOM = 'RANDOM'.freeze
    MANUAL = 'MANUAL'.freeze
    LINKLAYER = 'LINKLAYER'.freeze
    OTHER = 'OTHER'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ApplianceNetworkingInterfacesIpv6Origin.constants.select { |c| ApplianceNetworkingInterfacesIpv6Origin::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ApplianceNetworkingInterfacesIpv6Origin" if constantValues.empty?
      value
    end
  end
  end
end
