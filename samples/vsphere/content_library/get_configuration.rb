#!/usr/bin/env ruby

require 'bundler/setup'
require 'optparse'
require 'vsphere-automation-vcenter'
require 'vsphere-automation-content'
require 'vsphere-automation-cis'

options = { insecure: false, associable_types: [] }
OptionParser.new do |opts|
  opts.on('-s SERVER', '--server SERVER', 'vCenter server to use') do |s|
    options[:server] = s
  end
  opts.on('-u USERNAME', '--username USERNAME', 'username to use') do |u|
    options[:username] = u
  end
  opts.on('-p PASSWORD', '--password PASSWORD', 'password to use') do |p|
    options[:password] = p
  end
  opts.on('-k', '--insecure', 'skip certificate validation') do |k|
    options[:insecure] = k
  end
  end.parse!

  configuration = VSphereAutomation::Configuration.new.tap do |c|
    c.host = options[:server]
    c.username = options[:username]
    c.password = options[:password]
    c.scheme = 'https'
    c.verify_ssl = !options[:insecure]
    c.verify_ssl_host = !options[:insecure]
  end
  api_client = VSphereAutomation::ApiClient.new(configuration)
  api_client.default_headers['Authorization'] = configuration.basic_auth_token
  session_api = VSphereAutomation::CIS::SessionApi.new(api_client)
  session_id = session_api.create('').value
  api_client.default_headers['vmware-api-session-id'] = session_id
  api_instance = VSphereAutomation::Content::ConfigurationApi.new(api_client)
  
  begin   
    result = api_instance.get
    puts "get configuration value #{result}"
  rescue VSphereAutomation::ApiError => e
    puts "Exception when calling ConfigurationApi->get: #{e}"
  end