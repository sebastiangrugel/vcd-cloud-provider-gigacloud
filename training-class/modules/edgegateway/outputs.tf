output "edge_id" {
  description = "The ID of the NSX-T Edge Gateway"
  value       = data.vcd_nsxt_edgegateway.nsx-t-edge.id
}