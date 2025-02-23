terraform {
  required_providers {
    vcd = {
      source  = "vmware/vcd"
      version = "3.14.0"
    }
  }
}

resource "vcd_vm" "standalone_vm" {
  count            = var.vm_count
  name             = "${var.vm_name_prefix}-${count.index + 1}"
  vapp_template_id = var.vapp_template_id
  cpus             = var.cpus
  memory           = var.memory
  power_on         = var.power_on
  storage_profile  = var.storage_profile

  network {
    type               = "org"
    name               = var.network_name
    ip_allocation_mode = var.ip_allocation_mode
    is_primary         = true
  }
}