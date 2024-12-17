data "vcd_catalog" "catalog-seba" {
  name = "Sebastian Images"
}

# With shared catalog exist some errors ()
#data "vcd_catalog" "catalog" {
#  name = "GigaCloud Images"
#}

# VCD template to use next
data "vcd_catalog_vapp_template" "centos-9" {
  catalog_id = data.vcd_catalog.catalog-seba.id
  name       = "CentOS Stream 9"
}

# VDC group in use
data "vcd_org_vdc" "vdc-1" {
  name = "grugel PrimeVDC EQ"
}

# NSX-T edge deployed be default
data "vcd_nsxt_edgegateway" "nsx-t-edge" {
  owner_id = data.vcd_org_vdc.vdc-1.id
  name = "grugel PrimeVDC Edge EQ"
}


##################################
# Dynamic resources
##################################

# Segments for initial deployment
resource "vcd_network_routed_v2" "nsxt-backed" {
  name        = "nsxt-routed-segment-${count.index + 1}"
  description = "My routed Org VDC network backed by NSX-T"
  edge_gateway_id = data.vcd_nsxt_edgegateway.nsx-t-edge.id
  count = 6 # max=2
  gateway            = "192.168.${count.index + 1}.1"
  prefix_length      = 24
  guest_vlan_allowed = true

  
}
