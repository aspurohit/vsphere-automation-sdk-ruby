require 'optparse'
require 'vsphere-automation-cis'
require 'vsphere-automation-content'


module ContentLibrary_Helper 
        
    def create_content_library(api_client,name,desc,storage_backing,client_token)
        api_instance = VSphereAutomation::Content::LocalLibraryApi.new(api_client)
        create_spec = VSphereAutomation::Content::ContentLibraryModel.new(
            name: name,
            description: desc,
            storage_backings: storage_backing
                )
        create_contentLibModel = VSphereAutomation::Content::ContentLocalLibraryCreate.new(client_token: client_token,create_spec: create_spec)
        begin
            local_library_id = api_instance.create( create_contentLibModel).value
            puts "Created Content Library of  ID: #{local_library_id}"
        rescue VSphereAutomation::ApiError => e
            puts "Exception when calling LocalLibraryApi->create: #{e}"
        end
        return local_library_id
    end

    def get_content_library(api_client,local_library_id)
        api_instance = VSphereAutomation::Content::LocalLibraryApi.new(api_client)
        begin   
            result = api_instance.get(local_library_id)
            puts "get Library Value: #{result}"
        rescue VSphereAutomation::ApiError => e
            puts "Exception when calling LocalLibraryApi->get: #{e}"
        end
    end

    def list_content_library(api_client)
        api_instance = VSphereAutomation::Content::LocalLibraryApi.new(api_client)
        begin   
        result = api_instance.list
        puts 'list of library'
        puts api_instance.list.value
        puts result
        rescue VSphereAutomation::ApiError => e
        puts "Exception when calling LocalLibraryApi->list: #{e}"
        end
    end

    def update_content_library(api_client,name,desc,spec_type,storage_backing,local_library_id)
        api_instance = VSphereAutomation::Content::LocalLibraryApi.new(api_client)
        update_spec = VSphereAutomation::Content::ContentLibraryModel.new(
            name: name,
            description: desc,
            spec_type: spec_type,
            storage_backings: storage_backing
                )
        update_contentLibModel = VSphereAutomation::Content::ContentLocalLibraryUpdate.new(update_spec: update_spec)
        begin
            result = api_instance.update(local_library_id,update_contentLibModel)
            puts "updated content library of  ID: #{local_library_id}"
        rescue VSphereAutomation::ApiError => e
            puts "Exception when calling LocalLibraryApi->update: #{e}"
        end
    end

    def delete_content_library(api_client,local_library_id)
        api_instance = VSphereAutomation::Content::LocalLibraryApi.new(api_client)
        begin   
            result = api_instance.delete(local_library_id)
            puts "delete Library Value: #{result}"
        rescue VSphereAutomation::ApiError => e
            puts "Exception when calling LocalLibraryApi->delete: #{e}"
        end
    end

end


