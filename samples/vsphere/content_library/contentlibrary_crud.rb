#!/usr/bin/env ruby
require 'bundler/setup'
require 'optparse'
require 'vsphere-automation-vcenter'
require 'vsphere-automation-content'
require 'vsphere-automation-cis'
require 'securerandom'
require 'content_library_helper'
require 'client'
include Client
include ContentLibrary_Helper

def get_options()
  option_parser, options = get_default_options

  option_parser.on('-e DESCRIPTION', '--description DESCRIPTION', 'description  to use') do |e|
    options[:description] = e
  end
  option_parser.on('-n NAME', '--name NAME', 'name  to use') do |n|
    options[:name] = n
  end
  option_parser.on('-t DATASTORE_ID', '--datastore_id DATASTORE_ID', 'datastore_id  to use') do |t|
    options[:datastore_id] = t
  end
  option_parser.parse!
  return options
end

options = get_options
api_client = get_session(options)['api_client']

if options[:name] == nil  
    puts "Getting Default folder for the new host"
    options[:name] = get_library_identifier(api_client, 'default_cl')
end

if options[:datastore_id] == nil  
  puts "Getting Default folder for the new host"
  options[:datastore_id] = get_library_identifier(api_client, 'datastore-60')
end

  client_token = SecureRandom.uuid
  puts "client token : #{client_token}"
  spec_type = VSphereAutomation::Content::ContentLibraryModelLibraryType::LOCAL
  storage_backings= VSphereAutomation::Content::ContentLibraryStorageBacking.new(
    type: VSphereAutomation::Content::ContentLibraryStorageBackingType::DATASTORE,
    datastore_id: options[:datastore_id]
  )
  name =  options[:name]
  description = options[:description]
  storage_backings =  [storage_backings]
  create_content_library = create_content_library(api_client, name, description, storage_backings, client_token)
  #content_library_id = create_content_library.value
  #list the content library
  list_content_library = list_content_library(api_client)
  
  #get content library
  get_content_library = get_content_library(api_client,create_content_library)

  #update content library
  update_name = "#{name}_update"
  update_desc = "#{description}_update"
  update_content_library = update_content_library(api_client,update_name,update_desc,spec_type, storage_backings, create_content_library)

  #delete content library
  delete_content_library = delete_content_library(api_client,create_content_library)
