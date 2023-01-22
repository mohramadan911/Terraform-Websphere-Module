output "vm_ip_address" {
  value = vsphere_virtual_machine.vm.network_interface.0.ip_address
}