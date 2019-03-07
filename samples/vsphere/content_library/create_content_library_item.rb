#!/usr/bin/env ruby

require 'bundler/setup'
require 'optparse'
require 'vsphere-automation-vcenter'
require 'vsphere-automation-content'
require 'vsphere-automation-cis'
require 'securerandom'
require 'find_contentlibrary_helper'
require 'client'
include Client
include Find_contentLibrary_helper

def get_options()
  option_parser, options = get_default_options

  option_parser.on('-l LIBRARYNAME', '--libraryname LIBRARYID', 'library id  to use') do |l|
  options[:libraryname] = l
  end
  option_parser.on('-n ITEMNAME', '--itemname NAME', 'content library item name  to use') do |n|
    options[:itemname] = n
  end
  option_parser.on('-d DESCRIPTION', '--description DESCRIPTION', 'description') do |d|
    options[:description] = d
  end
  option_parser.parse!
  return options
end

options = get_options
api_client = get_session(options)['api_client']
  
if options[:itemname] == nil  
    puts "Getting Default folder for the new host"
    options[:itemname] = get_library_identifier(api_client, 'default_cl_item')
end

api_instance = VSphereAutomation::Content::LibraryItemApi.new(api_client)
client_token = SecureRandom.uuid
library_name = options[:libraryname]
content_library_id = find_contentlibrary(library_name,api_client)
id = content_library_id.join(',')
puts id
create_spec = VSphereAutomation::Content::ContentLibraryItemModel.new(
  itemname: options[:itemname],
  description: options[:description],
  library_id: id
)
create_model =  VSphereAutomation::Content::ContentLibraryItemCreate.new(client_token: client_token, create_spec: create_spec)
begin
  library_item_id = api_instance.create( create_model)
  puts "library_item_id: #{library_item_id}"
rescue VSphereAutomation::ApiError => e
  puts "Exception when calling LibraryItemApi->create: #{e}"
end
