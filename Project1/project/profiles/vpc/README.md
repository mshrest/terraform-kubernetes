## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./../../_modules/terraform-gcp-vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app"></a> [app](#input\_app) | Application | `string` | `"calc"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Working environment | `string` | `"dev"` | no |
| <a name="input_gcp_project"></a> [gcp\_project](#input\_gcp\_project) | GCP project name | `string` | n/a | yes |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | GCP region | `string` | n/a | yes |
| <a name="input_gcp_zone"></a> [gcp\_zone](#input\_gcp\_zone) | GCP Zone | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region code | `string` | `"us-central1"` | no |

## Outputs

No outputs.
