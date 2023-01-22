Copy code
terraform {
  source = "../../../terraform"
}

inputs {
  env = "dev"
}

include {
  path = find_in_parent_folders()
}

inputs {
  vsphere_server = "vsphere.example.com"
  vsphere_user = "user"
  vsphere_password = "password"
  datacenter_name = "Datacenter"
  resource_pool_name = "Cluster"
  template_path = "[datastore1] template/websphere.vmx"
  ip_address = "192.168.1.100"
  dns_server_list = ["8.8.8.8", "8.8.4.4"]
  gateway = "192.168.1.1"
}