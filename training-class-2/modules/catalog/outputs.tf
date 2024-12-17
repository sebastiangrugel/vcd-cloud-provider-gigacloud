output "catalog_id" {
  description = "The ID of the vCD catalog"
  value       = data.vcd_catalog.catalog.id
}

output "catalog_name" {
  description = "The name of the vCD catalog"
  value       = data.vcd_catalog.catalog.name
}