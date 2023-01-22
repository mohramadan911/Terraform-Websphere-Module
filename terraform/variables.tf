variable "vsphere_server" {
  type = string
}

variable "vsphere_user" {
  type = string
}

variable "vsphere_password" {
  type = string
}

variable "datacenter_id" {
  type = string
}

variable "resource_pool_id" {
  type = string
}

variable "template_path" {
  type = string
}
variable "disk_size" {
  type = string
  default = "10"
}
variable "memory" {
  type = string
  default = "2048"
}
variable "num_cpus" {
  type = string
  default = "2"
}
variable "websphere_version" {
  type = string
  default = "8.5.5"
}
