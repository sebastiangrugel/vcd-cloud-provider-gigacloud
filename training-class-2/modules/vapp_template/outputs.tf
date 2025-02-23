output "template_id" {
  description = "The ID of the vApp template"
  value       = data.vcd_catalog_vapp_template.template.id
}

output "template_name" {
  description = "The name of the vApp template"
  value       = data.vcd_catalog_vapp_template.template.name
}