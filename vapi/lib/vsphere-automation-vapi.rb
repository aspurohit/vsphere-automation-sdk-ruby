=begin
#vapi

#vAPI is an extensible API Platform for modelling and delivering APIs/SDKs/CLIs.

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

# Common files
require 'vsphere-automation-vapi/api_client'
require 'vsphere-automation-vapi/api_error'
require 'vsphere-automation-vapi/version'
require 'vsphere-automation-vapi/configuration'

# Models
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_authentication_info'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_authentication_info_scheme_type'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_component_data'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_component_fingerprint_result'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_component_info'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_component_info_packages'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_component_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_component_result'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_operation_info'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_package_info'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_package_info_services'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_package_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_package_result'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_service_info'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_service_info_operations'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_service_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_service_operation_get'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_service_operation_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_service_operation_result'
require 'vsphere-automation-vapi/models/vapi_metadata_authentication_service_result'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_command_fingerprint_result'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_command_formatter_type'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_command_generic_type'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_command_get'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_command_identity'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_command_info'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_command_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_command_option_info'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_command_output_field_info'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_command_output_info'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_command_result'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_namespace_fingerprint_result'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_namespace_get'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_namespace_identity'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_namespace_info'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_namespace_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_cli_namespace_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_component_data'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_component_fingerprint_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_component_info'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_component_info_packages'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_component_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_component_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_constant_info'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_constant_value'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_constant_value_category'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_element_map'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_element_map_elements'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_element_value'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_element_value_type'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_enumeration_info'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_enumeration_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_enumeration_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_enumeration_value_info'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_enumeration_value_info_metadata'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_error_info'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_field_info'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_generic_instantiation'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_generic_instantiation_generic_type'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_operation_info'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_operation_result_info'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_package_info'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_package_info_enumerations'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_package_info_services'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_package_info_structures'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_package_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_package_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_primitive_value'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_primitive_value_type'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_resource_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_resource_model_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_service_info'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_service_info_operations'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_service_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_service_operation_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_service_operation_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_service_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_structure_info'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_structure_info_constants'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_structure_info_type'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_structure_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_structure_result'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_type'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_type_builtin_type'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_type_category'
require 'vsphere-automation-vapi/models/vapi_metadata_metamodel_user_defined_type'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_component_data'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_component_fingerprint_result'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_component_info'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_component_info_packages'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_component_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_component_result'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_operation_info'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_package_info'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_package_info_services'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_package_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_package_result'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_privilege_info'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_service_info'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_service_info_operations'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_service_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_service_operation_get'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_service_operation_list_result'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_service_operation_result'
require 'vsphere-automation-vapi/models/vapi_metadata_privilege_service_result'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_component_info'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_component_list_result'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_http_method'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_link'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_operation'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_options_get'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_options_result'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_reference'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_resource_info'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_resource_list_result'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_resource_result'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_root_info'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_root_result'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_service_info'
require 'vsphere-automation-vapi/models/vapi_rest_navigation_service_list_result'
require 'vsphere-automation-vapi/models/vapi_std_errors_not_allowed_in_current_state'
require 'vsphere-automation-vapi/models/vapi_std_errors_not_allowed_in_current_state_error'
require 'vsphere-automation-vapi/models/vapi_std_errors_not_found'
require 'vsphere-automation-vapi/models/vapi_std_errors_not_found_error'
require 'vsphere-automation-vapi/models/vapi_std_errors_service_unavailable'
require 'vsphere-automation-vapi/models/vapi_std_errors_service_unavailable_error'
require 'vsphere-automation-vapi/models/vapi_std_errors_unauthenticated'
require 'vsphere-automation-vapi/models/vapi_std_errors_unauthenticated_error'
require 'vsphere-automation-vapi/models/vapi_std_errors_unauthorized'
require 'vsphere-automation-vapi/models/vapi_std_errors_unauthorized_error'
require 'vsphere-automation-vapi/models/vapi_std_localizable_message'

# APIs
require 'vsphere-automation-vapi/api/metadata_authentication_component_api'
require 'vsphere-automation-vapi/api/metadata_authentication_package_api'
require 'vsphere-automation-vapi/api/metadata_authentication_service_api'
require 'vsphere-automation-vapi/api/metadata_authentication_service_operation_api'
require 'vsphere-automation-vapi/api/metadata_cli_command_api'
require 'vsphere-automation-vapi/api/metadata_cli_namespace_api'
require 'vsphere-automation-vapi/api/metadata_metamodel_component_api'
require 'vsphere-automation-vapi/api/metadata_metamodel_enumeration_api'
require 'vsphere-automation-vapi/api/metadata_metamodel_package_api'
require 'vsphere-automation-vapi/api/metadata_metamodel_resource_api'
require 'vsphere-automation-vapi/api/metadata_metamodel_resource_model_api'
require 'vsphere-automation-vapi/api/metadata_metamodel_service_api'
require 'vsphere-automation-vapi/api/metadata_metamodel_service_operation_api'
require 'vsphere-automation-vapi/api/metadata_metamodel_structure_api'
require 'vsphere-automation-vapi/api/metadata_privilege_component_api'
require 'vsphere-automation-vapi/api/metadata_privilege_package_api'
require 'vsphere-automation-vapi/api/metadata_privilege_service_api'
require 'vsphere-automation-vapi/api/metadata_privilege_service_operation_api'
require 'vsphere-automation-vapi/api/rest_navigation_component_api'
require 'vsphere-automation-vapi/api/rest_navigation_options_api'
require 'vsphere-automation-vapi/api/rest_navigation_resource_api'
require 'vsphere-automation-vapi/api/rest_navigation_root_api'
require 'vsphere-automation-vapi/api/rest_navigation_service_api'
require 'vsphere-automation-vapi/api/vcenter_activation_api'

module VSphereAutomation
  class << self
    # Customize default settings for the SDK using block.
    #   VSphereAutomation.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
