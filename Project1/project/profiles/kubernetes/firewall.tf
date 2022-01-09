resource "random_string" "code" {
  length  = 5
  upper   = false
  number  = false
  lower   = true
  special = false
}

locals{
  region_code = jsondecode(file("${path.module}/../../_modules/terraform-gcp-kubernetes/region.json"))[var.region]
}

locals {
  code = "${var.environment}-${local.region_code}-${random_string.code.result}-${var.app}"
}

resource "google_compute_firewall" "default" {
  name          = "${local.code}-firewall"
  project       = var.gcp_project
  description   = "Setting firewall rules"
  priority      = "1000"
  direction     = "INGRESS"
  network       = "dev-io-yfvaevoiggkh-calc-vpc"
  source_ranges = ["10.128.0.0/20"]
  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-3000"]
  }
}