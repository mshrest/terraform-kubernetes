provider "google" {
  region = var.gcp_region
  zone   = var.gcp_zone
}


module "kubernetes" {
  source = "./../../_modules/terraform-gcp-kubernetes"

  gcp_zone = var.gcp_zone
  project  = var.gcp_project
  initial_node_count = var.initial_node_count
  machine_type       = var.machine_type
  vpc_network_name = var.vpc_network_name
  
}