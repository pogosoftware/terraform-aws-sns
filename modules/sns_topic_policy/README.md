# Module: aws_sns_topic_policy

Provides an SNS topic policy resource.

> **_NOTE:_** <br>
If a Principal is specified as just an AWS account ID rather than an ARN, AWS silently converts it to the ARN for the root user, causing future terraform plans to differ. To avoid this problem, just specify the full ARN, e.g., `arn:aws:iam::123456789012:root`

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.10 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_sns_topic_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_arn"></a> [arn](#input\_arn) | The ARN of the SNS topic | `string` | n/a | yes |
| <a name="input_policy"></a> [policy](#input\_policy) | The fully-formed AWS policy as JSON | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->