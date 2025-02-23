terraform {
  required_providers {
    vcd = {
      source  = "vmware/vcd"
      version = "3.14.0"
    }
  }
}

data "vcd_org_vdc" "vdc-1" {
  name = var.vdc_name
}