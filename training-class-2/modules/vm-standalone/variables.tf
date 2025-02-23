variable "vm_count" {
  description = "Number of VMs to create"
  type        = number
  default     = 1
}

variable "vm_name_prefix" {
  description = "Prefix for the VM names"
  type        = string
}

variable "vapp_template_id" {
  description = "The ID of the vApp template"
  type        = string
}

variable "cpus" {
  description = "Number of CPU cores for the VMs"
  type        = number
  default     = 2
}

variable "memory" {
  description = "Amount of memory in MB for the VMs"
  type        = number
  default     = 2048
}

variable "power_on" {
  description = "Power on the VM after creation"
  type        = bool
  default     = true
}

variable "storage_profile" {
  description = "The storage profile for the VM"
  type        = string
  default     = "default"
}

variable "network_name" {
  description = "Name of the network to attach to the VMs"
  type        = string
}

variable "ip_allocation_mode" {
  description = "IP allocation mode for the VMs"
  type        = string
  default     = "POOL"
}