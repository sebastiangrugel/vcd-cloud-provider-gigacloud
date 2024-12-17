module "catalog" {
  source = "./modules/catalog"
  catalog_name = "Sebastian Images"
}


module "vdc" {
  source = "./modules/vdc"
  vdc_name = "grugel PrimeVDC EQ"
}


module "edgegateway" {
  source = "./modules/edgegateway"
  edge_name = "grugel PrimeVDC Edge EQ"
  vdc_id    = module.vdc.vdc_id
}


module "networks" {
  source         = "./modules/networks"
  edge_gateway_id = module.edgegateway.edge_id
  network_count   = 1
  subnet_prefix   = "192.168"

static_ip_pools = [
    {
      start_address = "192.168.1.10"
      end_address   = "192.168.1.20"
    }
  ]

}

# vApp Template Module
module "vapp_template" {
  source        = "./modules/vapp_template"
  catalog_id    = module.catalog.catalog_id
  template_name = "CentOS Stream 9"
}


module "training-vms" {
  source            = "./modules/vm-standalone"
  vm_name_prefix    = "Training-VM-"
  vm_count          = 1
  vapp_template_id  = module.vapp_template.template_id
  cpus              = 2
  memory            = 2048
  power_on          = true
  storage_profile   = "ClassFastSSD"
  network_name      = module.networks.network_names[0]
  ip_allocation_mode = "POOL"
}

