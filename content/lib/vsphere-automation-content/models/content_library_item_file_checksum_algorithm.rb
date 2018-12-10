=begin
#content

#VMware vSphere® Content Library empowers vSphere Admins to effectively manage VM templates, vApps, ISO images and scripts with ease.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'date'

module VSphereAutomation
  module Content
    class ContentLibraryItemFileChecksumAlgorithm
    
    SHA1 = 'SHA1'.freeze
    MD5 = 'MD5'.freeze
    SHA256 = 'SHA256'.freeze
    SHA512 = 'SHA512'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ContentLibraryItemFileChecksumAlgorithm.constants.select { |c| ContentLibraryItemFileChecksumAlgorithm::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ContentLibraryItemFileChecksumAlgorithm" if constantValues.empty?
      value
    end
  end
  end
end
