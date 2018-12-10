=begin
#vapi

#vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'date'

module VSphereAutomation
  module VAPI
    class VapiMetadataMetamodelTypeCategory
    
    BUILTIN = 'BUILTIN'.freeze
    USER_DEFINED = 'USER_DEFINED'.freeze
    GENERIC = 'GENERIC'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VapiMetadataMetamodelTypeCategory.constants.select { |c| VapiMetadataMetamodelTypeCategory::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VapiMetadataMetamodelTypeCategory" if constantValues.empty?
      value
    end
  end
  end
end
