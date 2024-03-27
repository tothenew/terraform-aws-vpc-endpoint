# terraform-aws-vpc-endpoint

[![Lint Status](https://github.com/tothenew/terraform-aws-vpc-endpoint/workflows/Lint/badge.svg)](https://github.com/tothenew/terraform-aws-vpc-endpoint/actions)
[![LICENSE](https://img.shields.io/github/license/tothenew/terraform-aws-vpc-endpoint)](https://github.com/tothenew/terraform-aws-vpc-endpoint/blob/master/LICENSE)

This is a vpc-endpoint to use for baseline. The default actions will provide updates for section between Requirements and Outputs.

- Will create all the required VPC endpoint which is used regularly in like DynamoDB, SSM, ECR, SQS, SNS, Lambda

# Usages
```
module "vpc_endpoint" {
  source              = "git::https://github.com/tothenew/terraform-aws-vpc-endpoint.git"
  vpc_id              = "vpc-999999999999"
  subnet_ids          = ["subnet-999999999999"]
  route_table_ids     = ["rt-999999999999"]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_add_gateway"></a> [add\_gateway](#module\_add\_gateway) | ./modules/vpc-endpoint/gateway | n/a |
| <a name="module_add_interface"></a> [add\_interface](#module\_add\_interface) | ./modules/vpc-endpoint/interface | n/a |
| <a name="module_ec2_interface"></a> [ec2\_interface](#module\_ec2\_interface) | ./modules/vpc-endpoint/interface | n/a |
| <a name="module_ec2_messages_interface"></a> [ec2\_messages\_interface](#module\_ec2\_messages\_interface) | ./modules/vpc-endpoint/interface | n/a |
| <a name="module_s3_gateway"></a> [s3\_gateway](#module\_s3\_gateway) | ./modules/vpc-endpoint/gateway | n/a |
| <a name="module_ssm_interface"></a> [ssm\_interface](#module\_ssm\_interface) | ./modules/vpc-endpoint/interface | n/a |
| <a name="module_ssm_messages_interface"></a> [ssm\_messages\_interface](#module\_ssm\_messages\_interface) | ./modules/vpc-endpoint/interface | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_security_group.vpc_endpoint_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [aws_vpc.selected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_add_gateway"></a> [add\_gateway](#input\_add\_gateway) | Adding new Gateway endpoints | `list(string)` | `[]` | no |
| <a name="input_add_interface"></a> [add\_interface](#input\_add\_interface) | Adding new Interface endpoints | `list(string)` | `[]` | no |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | A map to add common tags to all the resources | `map(string)` | <pre>{<br>  "Environment": "dev",<br>  "Feature": "application",<br>  "Project": "project"<br>}</pre> | no |
| <a name="input_private_dns_enabled"></a> [private\_dns\_enabled](#input\_private\_dns\_enabled) | Allow private DNS enabled for the New VPC endpoint | `bool` | `true` | no |
| <a name="input_project_name_prefix"></a> [project\_name\_prefix](#input\_project\_name\_prefix) | A string value to describe prefix of all the resources | `string` | `"dev-project"` | no |
| <a name="input_route_table_ids"></a> [route\_table\_ids](#input\_route\_table\_ids) | A list of string value for Route table IDs | `list(string)` | n/a | yes |
| <a name="input_security_group_id"></a> [security\_group\_id](#input\_security\_group\_id) | Security Group ID for VPC Endpoint, if not define module will create automatically | `string` | `""` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | A list of string value for Subnet IDs | `list(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | A string value for VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_interface_arn"></a> [ec2\_interface\_arn](#output\_ec2\_interface\_arn) | n/a |
| <a name="output_ec2_interface_id"></a> [ec2\_interface\_id](#output\_ec2\_interface\_id) | n/a |
| <a name="output_ec2_messages_interface_arn"></a> [ec2\_messages\_interface\_arn](#output\_ec2\_messages\_interface\_arn) | n/a |
| <a name="output_ec2_messages_interface_id"></a> [ec2\_messages\_interface\_id](#output\_ec2\_messages\_interface\_id) | n/a |
| <a name="output_s3_gateway_arn"></a> [s3\_gateway\_arn](#output\_s3\_gateway\_arn) | n/a |
| <a name="output_s3_gateway_id"></a> [s3\_gateway\_id](#output\_s3\_gateway\_id) | n/a |
| <a name="output_ssm_interface_arn"></a> [ssm\_interface\_arn](#output\_ssm\_interface\_arn) | n/a |
| <a name="output_ssm_interface_id"></a> [ssm\_interface\_id](#output\_ssm\_interface\_id) | n/a |
| <a name="output_ssm_messages_interface_arn"></a> [ssm\_messages\_interface\_arn](#output\_ssm\_messages\_interface\_arn) | n/a |
| <a name="output_ssm_messages_interface_id"></a> [ssm\_messages\_interface\_id](#output\_ssm\_messages\_interface\_id) | n/a |
<!-- END_TF_DOCS -->

## Authors

Module managed by [TO THE NEW Pvt. Ltd.](https://github.com/tothenew)

## License

Apache 2 Licensed. See [LICENSE](https://github.com/tothenew/terraform-aws-vpc-endpoint/blob/main/LICENSE) for full details.
