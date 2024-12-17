output "vdc_id" {
  description = "The ID of the VDC"
  value       = data.vcd_org_vdc.vdc-1.id
}