
/*
output "network_names" {
  description = "List of names of the created NSX-T backed networks"
  value       = [for net in vcd_network_routed_v2.nsxt_network : net.name]
}

output "network_ids" {
  description = "List of IDs of the created NSX-T backed networks"
  value       = [for net in vcd_network_routed_v2.nsxt_network : net.id]
}

output "network_gateways" {
  description = "List of gateway IPs of the created networks"
  value       = [for net in vcd_network_routed_v2.nsxt_network : net.gateway]
}

*/

output "network_names" {
  value = [var.network_name] # Ensures it is a list
}
