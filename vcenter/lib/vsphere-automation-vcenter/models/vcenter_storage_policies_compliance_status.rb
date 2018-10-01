=begin
#vcenter

#VMware vCenter Server provides a centralized platform for managing your VMware vSphere environments

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.2.3

=end

require 'date'

module VSphereAutomation
  module VCenter
    class VcenterStoragePoliciesComplianceStatus
    
    COMPLIANT = 'COMPLIANT'.freeze
    NON_COMPLIANT = 'NON_COMPLIANT'.freeze
    UNKNOWN = 'UNKNOWN'.freeze
    NOT_APPLICABLE = 'NOT_APPLICABLE'.freeze
    OUT_OF_DATE = 'OUT_OF_DATE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VcenterStoragePoliciesComplianceStatus.constants.select { |c| VcenterStoragePoliciesComplianceStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VcenterStoragePoliciesComplianceStatus" if constantValues.empty?
      value
    end
  end
  end
end