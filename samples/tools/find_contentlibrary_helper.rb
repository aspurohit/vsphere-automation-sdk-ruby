require 'optparse'
require 'vsphere-automation-cis'
require 'vsphere-automation-content'


module Find_contentLibrary_helper
    def find_contentlibrary(name,api_client)
        api_instance = VSphereAutomation::Content::LibraryApi.new(api_client)
        spec_type = VSphereAutomation::Content::ContentLibraryModelLibraryType::LOCAL
        spec = VSphereAutomation::Content::ContentLibraryFindSpec.new(
            name:name,
            spec_type: spec_type
        )
        content_library_find = VSphereAutomation::Content::ContentLibraryFind.new(spec: spec)

        begin
            find_content_lib_id = api_instance.find(content_library_find).value
            puts "find Content Library by  id: #{find_content_lib_id}"
        rescue VSphereAutomation::ApiError => e
            puts "Exception when calling LibraryApi->find: #{e}"
        end
        return find_content_lib_id
    end
end