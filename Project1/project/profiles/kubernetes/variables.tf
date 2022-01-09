variable "gcp_region" {
  type        = string
  description = "GCP region"
}

variable "gcp_zone" {
  type        = string
  description = "GCP Zone"
}

variable "gcp_project" {
  type        = string
  description = "GCP project name"
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

variable "region" {
  description = "Region code"
  default = "us-central1"
}

variable "app" {
  description = "Application"
  default = "calc"
}

variable "vpc_network_name" {
  description = "VPC network name"
  default = "dev-io-yfvaevoiggkh-calc-vpc"
}
