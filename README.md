<!-- BEGIN_TF_DOCS -->
# terraform-aws-ecr
Terraform module for the creation of an ECR repository.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecr_repository.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_ecr_repository_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_encryption_type"></a> [encryption\_type](#input\_encryption\_type) | The encryption type for the repository. Must be one of: `KMS` or `AES256`. Defaults to `AES256` | `string` | `null` | no |
| <a name="input_image_tag_mutability"></a> [image\_tag\_mutability](#input\_image\_tag\_mutability) | The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. | `string` | `"IMMUTABLE"` | no |
| <a name="input_kms_key"></a> [kms\_key](#input\_kms\_key) | The ARN of the KMS key to use when encryption\_type is `KMS`. If not specified, uses the default AWS managed key for ECR | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the ECR Repository | `string` | n/a | yes |
| <a name="input_policy"></a> [policy](#input\_policy) | The ECR policy document | `string` | `""` | no |
| <a name="input_policy_enabled"></a> [policy\_enabled](#input\_policy\_enabled) | Bool to enable or disable ECR repository policy | `bool` | `false` | no |
| <a name="input_scan_on_push"></a> [scan\_on\_push](#input\_scan\_on\_push) | Bool that determines if images are scanned after being pushed to repo. | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to apply | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecr_repository_arn"></a> [ecr\_repository\_arn](#output\_ecr\_repository\_arn) | n/a |
| <a name="output_ecr_repository_url"></a> [ecr\_repository\_url](#output\_ecr\_repository\_url) | n/a |
<!-- END_TF_DOCS -->