variable "project" {
  type = string
  description = "Name of the project"
}

variable "gcp_zone" {
  type        = string
  description = "GCP Zone"
}

variable "initial_node_count" {
  default = 1
}

variable "machine_type" {
  default = "n1-standard-1"
}

variable "environment" {
  description = "Working environment"
  default = "dev"
}

locals{
  region_code = jsondecode(file("${path.module}/../../_modules/terraform-gcp-kubernetes/region.json"))[var.region]
}

variable "app" {
  description = "Application"
  default = "calc"
}

variable "region" {
  description = "Region code"
  default = "us-central1"
}

variable "vpc_network_name" {
  description = "VPC network name"
  default = "dev-io-yfvaevoiggkh-calc-vpc"
}

