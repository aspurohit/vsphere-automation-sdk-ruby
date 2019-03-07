require 'optparse'
require 'vsphere-automation-cis'
require 'vsphere-automation-content'


module Client
  def get_default_options
    options = { insecure: false }
    opts = OptionParser.new()

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
    return opts, options
  end

  def get_session(options)
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
    return {'session_id' => session_id, 'api_client' => api_client}
  end

  def get_vm_identifier(api_client, vm_name)
    vm_api = VSphereAutomation::VCenter::VMApi.new(api_client)
    vm_api.list.value.each do |vm|
      if vm.name == vm_name
        return vm.vm
      end
    end
  end

  def get_dc_identifier(api_client, dc_name)
    datacenter = VSphereAutomation::VCenter::DatacenterApi.new(api_client)
    datacenter.list.value.each do |dc|
      if dc.name == dc_name
        return dc.datacenter
      end
    end
  end

  def get_cluster_identifier(api_client, c_name)
    clusters = VSphereAutomation::VCenter::ClusterApi.new(api_client)
    clusters.list.value.each do |c|
      if c.name == c_name
        return c.cluster
      end
    end
  end

  def get_datastore_identifier(api_client, ds_name)
    datastore = VSphereAutomation::VCenter::DatastoreApi.new(api_client)
    datastore.list.value.each do |ds|
      if ds.name == ds_name
        return ds.datastore
      end
    end
  end

  def get_folder(api_client, type)
    folder = VSphereAutomation::VCenter::FolderApi.new(api_client)
    folder.list.value.each do |f|
      if type == f.type
        return f.folder
      end
    end
  end

  def get_host_identifier(api_client, host_name)
    hosts = VSphereAutomation::VCenter::HostApi.new(api_client)
    hosts.list.value.each do |h|
      if h.name == host_name
        return h.host
      end
    end
  end

  def get_library_identifier(api_client, library_name)
    api_instance = VSphereAutomation::Content::LibraryApi.new(api_client)

    find_spec = VSphereAutomation::Content::ContentLibraryFindSpec.new(
        name: library_name,
        type: VSphereAutomation::Content::ContentLibraryModelLibraryType::LOCAL
    )

    find_opts = VSphereAutomation::Content::ContentLibraryFind.new(
        spec: find_spec
    )

    api_instance.find(find_opts).value[0]
  end

  def get_library_item_identifier(api_client, library_name, library_item_name)
    api_instance = VSphereAutomation::Content::LibraryItemApi.new(api_client)
    library_id = get_library_identifier(api_client, library_name)
    spec = VSphereAutomation::Content::ContentLibraryItemFindSpec.new(
        name: library_item_name,
        library_id: library_id
    )
    find_opts = VSphereAutomation::Content::ContentLibraryItemFind.new(
        spec: spec
    )

    api_instance.find(find_opts).value[0]
  end

  def get_policy_identifier(api_client, policy_name)
    policies = VSphereAutomation::VCenter::StoragePoliciesApi.new(api_client)
    policies.list.value.each do |policy|
      if policy.name == policy_name
        return policy.policy
      end
    end
  end

  def get_ethernet_identifier(api_client, vm_id)
    net = VSphereAutomation::VCenter::VmHardwareEthernetApi.new(api_client)
    # Return Network Adapter 1
    net.list(vm=vm_id).value[0].nic
  end

  def get_resource_pool_host(api_client, host_id)
    resource_pool = VSphereAutomation::VCenter::ResourcePoolApi.new(api_client)
    # Return First Resource Pool
    resource_pool.list(filter_hosts: host_id).value[0]
  end

  def create_cd(cdrom_api_instance, vm, backingspec)
    cdrom_create_spec = VSphereAutomation::VCenter::VcenterVmHardwareCdromCreateSpec.new(
        start_connected: true,
        backing: backingspec,
        allow_guest_control: true
    )

    vcenter_vm_hardware_cdrom_create = VSphereAutomation::VCenter::VcenterVmHardwareCdromCreate.new(
        spec: cdrom_create_spec
    )

    created_cd = cdrom_api_instance.create(vm=vm, vcenter_vm_hardware_cdrom_create).value
    puts created_cd
    return created_cd
  end


end