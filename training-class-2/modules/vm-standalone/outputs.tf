output "vm_ids" {
  description = "The IDs of the created VMs"
  value       = vcd_vm.standalone_vm[*].id
}