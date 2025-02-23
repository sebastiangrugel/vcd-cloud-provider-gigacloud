terraform {
  required_providers {
    vcd = {
      source  = "vmware/vcd"
      version = "3.14.0"
    }
  }
}

##################################
# Static resources
##################################


data "vcd_network_routed_v2" "net" {
  edge_gateway_id = var.edge_gateway_id
  name            = var.network_name
}


/* Temporary disabled
##################################
# Dynamic resources
##################################

# Segments for initial deployment
resource "vcd_network_routed_v2" "nsxt_network" {
  count           = var.network_count
  name            = "nsxt-routed-segment-${count.index + 1}"
  description     = "My routed Org VDC network backed by NSX-T"
  edge_gateway_id = var.edge_gateway_id
  gateway         = "${var.subnet_prefix}.${count.index + 1}.1"
  prefix_length   = 24
  guest_vlan_allowed = true


# Add static IP pools if provided
  dynamic "static_ip_pool" {
    for_each = var.static_ip_pools != null ? var.static_ip_pools : []
    content {
      start_address = static_ip_pool.value.start_address
      end_address   = static_ip_pool.value.end_address
    }
  }
}
*/


