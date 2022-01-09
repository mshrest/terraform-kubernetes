variable "project" {
  type = string
  description = "Name of the project"
}

variable "enable_auto_create_subnetworks" {
    type = bool
    description = "it will create a subnet for each region automatically"
    default = true

}

variable "routing_mode" {
  type = string
  description = "The network-wide routing mode to use"
  default = "REGIONAL"
}

variable "environment" {
  description = "Working environment"
  default = "dev"
}

locals{
  region_code = jsondecode(file("${path.module}/../../_modules/terraform-gcp-kubernetes/region.json"))[var.region]
}

variable "region" {
  description = "Region code"
  default = "us-central1"
}

variable "app" {
  description = "Application"
  default = "calc"
}