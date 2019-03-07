require 'optparse'
require 'vsphere-automation-cis'
require 'vsphere-automation-content'


module CategoryTagging_Helper
    def get_category_identifier(api_client ,category_id)
        api_instance = VSphereAutomation::CIS::TaggingCategoryApi.new(api_client)
        get_category_id = api_instance.get(category_id).value.id
        get_category_name = api_instance.get(options[:category_id]).value.name
        return get_category_name
    end  
    def create_contentLibrary_identifier(api_client,catagory_id,cat_name,cat_desc,associable_types,cardinality)
        #category_spec = VSphereAutomation::CIS::TaggingCategoryApi.new(api_client)
        find_spec = VSphereAutomation::CIS::CisTaggingCategoryCreateSpec.new(
          name: cat_name,
          description: cat_desc,
          associable_types: associable_types,
          cardinality: cardinality,
          category_id: catagory_id)
        find_opts = VSphereAutomation::CIS::CisTaggingCategoryCreate.new(find_spec: find_spec)
        return find_opts
    end

    def list_category_identifier(api_client)
        #category_spec = VSphereAutomation::CIS::TaggingCategoryApi.new(api_client)
        cat_list = api_instance.list.value
        return cat_list
    end

end


