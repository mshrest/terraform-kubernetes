resource "random_string" "code" {
  length  = 5
  upper   = false
  number  = false
  lower   = true
  special = false
}

locals {
  code = "${var.environment}-${local.region_code}-${random_string.code.result}-${var.app}"
}

resource "google_container_cluster" "gke_cluster" {
  name        = "${local.code}-cluster"
  project     = var.project
  description = "Creating GKE Cluster"
  location    = var.gcp_zone

  remove_default_node_pool = true
  initial_node_count       = var.initial_node_count

  release_channel {
      channel = "REGULAR"
  }

  
  network = var.vpc_network_name
  
}

resource "google_container_node_pool" "gke_nodepool" {
  name       = "${local.code}-nodepool"
  project    = var.project
  location   = var.gcp_zone
  cluster    = google_container_cluster.gke_cluster.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = var.machine_type

    metadata = {
      disable-legacy-endpoints = "true"
    }

     oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
