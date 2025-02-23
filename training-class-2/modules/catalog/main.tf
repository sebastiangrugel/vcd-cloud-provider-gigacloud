terraform {
  required_providers {
    vcd = {
      source  = "vmware/vcd"
      version = "3.14.0"
    }
  }
}

data "vcd_catalog" "catalog" {
  name = var.catalog_name
}

data "vcd_catalog_vapp_template" "template" {
  catalog_id = data.vcd_catalog.catalog.id
  name       = "CentOS Stream 9"
}