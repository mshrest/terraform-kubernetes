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