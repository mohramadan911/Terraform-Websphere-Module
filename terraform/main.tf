provider "vsphere" {
  vsphere_server = var.vsphere_server
  user           = var.vsphere_user
  password       = var.vsphere_password
}

resource "vsphere_network" "network" {
  name          = var.network_name
  vlan_id       = var.vlan_id
  datacenter_id = var.datacenter_id
}

resource "vsphere_network_adapter" "adapter" {
  name           = var.adapter_name
  network_id     = vsphere_network.network.id
  virtual_machine_id = var.virtual_machine_id
}

resource "vsphere_network_label" "label" {
  name          = var.label_name
  network_id    = vsphere_network.network.id
}

resource "vsphere_network_card" "card" {
  name            = var.card_name
  virtual_machine_id = var.virtual_machine_id
}

resource "vsphere_network_card_network_label" "card_label" {
  network_card_id = vsphere_network_card.card.id
  network_label_id = vsphere_network_label.label.id
}


resource "vsphere_virtual_machine" "vm" {
  name             = var.vm_name
  resource_pool_id = var.resource_pool_id
  datacenter_id    = var.datacenter_id
  template_path    = var.template_path
  disk {
    size = var.disk_size
  }
  memory            = var.memory
  num_cpus           = var.num_cpus
  network_interface {
    network_id = vsphere_network.network.id
  }
}