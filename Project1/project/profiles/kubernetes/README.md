## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.5.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kubernetes"></a> [kubernetes](#module\_kubernetes) | ./../../_modules/terraform-gcp-kubernetes | n/a |

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [random_string.code](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app"></a> [app](#input\_app) | Application | `string` | `"calc"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Working environment | `string` | `"dev"` | no |
| <a name="input_gcp_project"></a> [gcp\_project](#input\_gcp\_project) | GCP project name | `string` | n/a | yes |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | GCP region | `string` | n/a | yes |
| <a name="input_gcp_zone"></a> [gcp\_zone](#input\_gcp\_zone) | GCP Zone | `string` | n/a | yes |
| <a name="input_initial_node_count"></a> [initial\_node\_count](#input\_initial\_node\_count) | n/a | `number` | `1` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | n/a | `string` | `"n1-standard-1"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region code | `string` | `"us-central1"` | no |
| <a name="input_vpc_network_name"></a> [vpc\_network\_name](#input\_vpc\_network\_name) | VPC network name | `string` | `"dev-io-yfvaevoiggkh-calc-vpc"` | no |

## Outputs

No outputs.
