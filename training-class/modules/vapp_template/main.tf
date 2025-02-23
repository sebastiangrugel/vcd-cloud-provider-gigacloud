terraform {
  required_providers {
    vcd = {
      source  = "vmware/vcd"
      version = "3.14.0"
    }
  }
}

data "vcd_catalog_vapp_template" "template" {
  catalog_id = var.catalog_id
  name       = var.template_name
}