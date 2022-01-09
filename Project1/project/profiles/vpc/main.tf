provider "google" {
  region = var.gcp_region
  zone   = var.gcp_zone
}

module "vpc" {
  source = "./../../_modules/terraform-gcp-vpc"

  project = var.gcp_project

}
