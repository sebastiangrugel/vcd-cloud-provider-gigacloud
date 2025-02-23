variable "edge_gateway_id" {
  description = "The ID of the NSX-T Edge Gateway"
  type        = string
}

variable "network_count" {
  description = "Number of routed networks to deploy"
  type        = number
}

variable "subnet_prefix" {
  description = "Subnet prefix for the networks"
  type        = string
}

variable "static_ip_pools" {
  description = "List of static IP pools for the networks"
  type = list(object({
    start_address = string
    end_address   = string
  }))
  default = []
}

variable "network_name" {
  description = "Name of existing network"
  type        = string
  default = ""
}