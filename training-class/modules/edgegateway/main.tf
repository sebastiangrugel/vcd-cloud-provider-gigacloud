terraform {
  required_providers {
    vcd = {
      source  = "vmware/vcd"
      version = "3.14.0"
    }
  }
}

data "vcd_nsxt_edgegateway" "nsx-t-edge" {
  owner_id = var.vdc_id
  name     = var.edge_name
}