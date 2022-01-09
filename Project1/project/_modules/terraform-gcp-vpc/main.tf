resource "random_string" "code" {
  length  = 12
  upper   = false
  number  = false
  lower   = true
  special = false
}

locals {
  code = "${var.environment}-${local.region_code}-${random_string.code.result}-${var.app}"
}


resource "google_compute_network" "vpc_network" {
  project = var.project

  name                    = "${local.code}-vpc"
  auto_create_subnetworks = var.enable_auto_create_subnetworks
  routing_mode            = var.routing_mode
  
}