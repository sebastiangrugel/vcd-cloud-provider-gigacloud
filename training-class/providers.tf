################################################################################
# This code block defines terraform and provider details
################################################################################

terraform {
  required_providers {
    vcd = {
      source = "vmware/vcd"
      version = "3.14.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.9"
    }
  }
  required_version = ">= 0.13"
}

provider "vcd" {
  user     = var.vcd_user
  password = var.vcd_pass
  auth_type = "integrated"
  # token = var.token
  #auth_type = "password"
  # api_token = var.vmwaas_api_token
  org       = var.vcd_org
  url       = var.vcd_url
  vdc       = var.vcd_vdc
}