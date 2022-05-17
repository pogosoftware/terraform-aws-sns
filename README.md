# terraform-aws-sns

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_sns_subscription"></a> [sns\_subscription](#module\_sns\_subscription) | ./modules/sns_subscription | n/a |
| <a name="module_sns_topic"></a> [sns\_topic](#module\_sns\_topic) | ./modules/sns_topic | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_sns_subscription"></a> [create\_sns\_subscription](#input\_create\_sns\_subscription) | Determinate to create `sns_subscription` resource or not | `bool` | `true` | no |
| <a name="input_create_sns_topic"></a> [create\_sns\_topic](#input\_create\_sns\_topic) | Determinate to create `sns_topic` resource or not | `bool` | `true` | no |
| <a name="input_sns_subscription_confirmation_timeout_in_minutes"></a> [sns\_subscription\_confirmation\_timeout\_in\_minutes](#input\_sns\_subscription\_confirmation\_timeout\_in\_minutes) | Integer indicating number of minutes to wait in retrying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols. Default is 1 | `number` | `1` | no |
| <a name="input_sns_subscription_delivery_policy"></a> [sns\_subscription\_delivery\_policy](#input\_sns\_subscription\_delivery\_policy) | JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription - this only applies to HTTP/S subscriptions | `string` | `null` | no |
| <a name="input_sns_subscription_endpoint"></a> [sns\_subscription\_endpoint](#input\_sns\_subscription\_endpoint) | Required if `create_sns_subscription` is set to `true`. Endpoint to send data to. The contents vary with the protocol | `string` | `null` | no |
| <a name="input_sns_subscription_endpoint_auto_confirms"></a> [sns\_subscription\_endpoint\_auto\_confirms](#input\_sns\_subscription\_endpoint\_auto\_confirms) | Whether the endpoint is capable of auto confirming subscription (e.g., PagerDuty). Default is `false` | `bool` | `false` | no |
| <a name="input_sns_subscription_filter_policy"></a> [sns\_subscription\_filter\_policy](#input\_sns\_subscription\_filter\_policy) | JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource | `string` | `null` | no |
| <a name="input_sns_subscription_protocol"></a> [sns\_subscription\_protocol](#input\_sns\_subscription\_protocol) | Required if `create_sns_subscription` is set to `true`. Protocol to use. Valid values are: sqs, sms, lambda, firehose, and application. Protocols email, email-json, http and https are also valid but partially supported | `string` | `null` | no |
| <a name="input_sns_subscription_raw_message_delivery"></a> [sns\_subscription\_raw\_message\_delivery](#input\_sns\_subscription\_raw\_message\_delivery) | Whether to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property). Default is false | `bool` | `false` | no |
| <a name="input_sns_subscription_redrive_policy"></a> [sns\_subscription\_redrive\_policy](#input\_sns\_subscription\_redrive\_policy) | JSON String with the redrive policy that will be used in the subscription | `string` | `null` | no |
| <a name="input_sns_subscription_role_arn"></a> [sns\_subscription\_role\_arn](#input\_sns\_subscription\_role\_arn) | Required if `create_sns_subscription` is set to `true`. ARN of the IAM role to publish to Kinesis Data Firehose delivery stream | `string` | `null` | no |
| <a name="input_sns_subscription_topic_arn"></a> [sns\_subscription\_topic\_arn](#input\_sns\_subscription\_topic\_arn) | Required if `create_sns_subscription` is set to `true` and `create_sns_topic` is set to `false`. ARN of the SNS topic to subscribe to | `string` | `null` | no |
| <a name="input_sns_topic_application_failure_feedback_role_arn"></a> [sns\_topic\_application\_failure\_feedback\_role\_arn](#input\_sns\_topic\_application\_failure\_feedback\_role\_arn) | IAM role for failure feedback | `string` | `null` | no |
| <a name="input_sns_topic_application_success_feedback_role_arn"></a> [sns\_topic\_application\_success\_feedback\_role\_arn](#input\_sns\_topic\_application\_success\_feedback\_role\_arn) | IAM role permitted to receive success feedback for this topic | `string` | `null` | no |
| <a name="input_sns_topic_application_success_feedback_sample_rate"></a> [sns\_topic\_application\_success\_feedback\_sample\_rate](#input\_sns\_topic\_application\_success\_feedback\_sample\_rate) | Percentage of success to sample | `string` | `null` | no |
| <a name="input_sns_topic_content_based_deduplication"></a> [sns\_topic\_content\_based\_deduplication](#input\_sns\_topic\_content\_based\_deduplication) | Enables content-based deduplication for FIFO topics | `string` | `null` | no |
| <a name="input_sns_topic_delivery_policy"></a> [sns\_topic\_delivery\_policy](#input\_sns\_topic\_delivery\_policy) | The SNS delivery policy | `string` | `null` | no |
| <a name="input_sns_topic_display_name"></a> [sns\_topic\_display\_name](#input\_sns\_topic\_display\_name) | The display name for the topic | `string` | `null` | no |
| <a name="input_sns_topic_fifo_topic"></a> [sns\_topic\_fifo\_topic](#input\_sns\_topic\_fifo\_topic) | Boolean indicating whether or not to create a FIFO (first-in-first-out) topic (default is false) | `bool` | `false` | no |
| <a name="input_sns_topic_firehose_failure_feedback_role_arn"></a> [sns\_topic\_firehose\_failure\_feedback\_role\_arn](#input\_sns\_topic\_firehose\_failure\_feedback\_role\_arn) | IAM role for failure feedback | `string` | `null` | no |
| <a name="input_sns_topic_firehose_success_feedback_role_arn"></a> [sns\_topic\_firehose\_success\_feedback\_role\_arn](#input\_sns\_topic\_firehose\_success\_feedback\_role\_arn) | The IAM role permitted to receive success feedback for this topic | `string` | `null` | no |
| <a name="input_sns_topic_firehose_success_feedback_sample_rate"></a> [sns\_topic\_firehose\_success\_feedback\_sample\_rate](#input\_sns\_topic\_firehose\_success\_feedback\_sample\_rate) | Percentage of success to sample | `string` | `null` | no |
| <a name="input_sns_topic_http_failure_feedback_role_arn"></a> [sns\_topic\_http\_failure\_feedback\_role\_arn](#input\_sns\_topic\_http\_failure\_feedback\_role\_arn) | IAM role for failure feedback | `string` | `null` | no |
| <a name="input_sns_topic_http_success_feedback_role_arn"></a> [sns\_topic\_http\_success\_feedback\_role\_arn](#input\_sns\_topic\_http\_success\_feedback\_role\_arn) | The IAM role permitted to receive success feedback for this topic | `string` | `null` | no |
| <a name="input_sns_topic_http_success_feedback_sample_rate"></a> [sns\_topic\_http\_success\_feedback\_sample\_rate](#input\_sns\_topic\_http\_success\_feedback\_sample\_rate) | Percentage of success to sample | `string` | `null` | no |
| <a name="input_sns_topic_kms_master_key_id"></a> [sns\_topic\_kms\_master\_key\_id](#input\_sns\_topic\_kms\_master\_key\_id) | The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK | `string` | `null` | no |
| <a name="input_sns_topic_lambda_failure_feedback_role_arn"></a> [sns\_topic\_lambda\_failure\_feedback\_role\_arn](#input\_sns\_topic\_lambda\_failure\_feedback\_role\_arn) | IAM role for failure feedback | `string` | `null` | no |
| <a name="input_sns_topic_lambda_success_feedback_role_arn"></a> [sns\_topic\_lambda\_success\_feedback\_role\_arn](#input\_sns\_topic\_lambda\_success\_feedback\_role\_arn) | The IAM role permitted to receive success feedback for this topic | `string` | `null` | no |
| <a name="input_sns_topic_lambda_success_feedback_sample_rate"></a> [sns\_topic\_lambda\_success\_feedback\_sample\_rate](#input\_sns\_topic\_lambda\_success\_feedback\_sample\_rate) | Percentage of success to sample | `string` | `null` | no |
| <a name="input_sns_topic_name"></a> [sns\_topic\_name](#input\_sns\_topic\_name) | Required if `use_sns_topic_name_prefix` is set to `true`. The name of the topic. Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. For a FIFO (first-in-first-out) topic, the name must end with the .fifo suffix. If omitted, Terraform will assign a random, unique name | `string` | `null` | no |
| <a name="input_sns_topic_policy"></a> [sns\_topic\_policy](#input\_sns\_topic\_policy) | The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide. | `string` | `null` | no |
| <a name="input_sns_topic_sqs_failure_feedback_role_arn"></a> [sns\_topic\_sqs\_failure\_feedback\_role\_arn](#input\_sns\_topic\_sqs\_failure\_feedback\_role\_arn) | IAM role for failure feedback | `string` | `null` | no |
| <a name="input_sns_topic_sqs_success_feedback_role_arn"></a> [sns\_topic\_sqs\_success\_feedback\_role\_arn](#input\_sns\_topic\_sqs\_success\_feedback\_role\_arn) | The IAM role permitted to receive success feedback for this topic | `string` | `null` | no |
| <a name="input_sns_topic_sqs_success_feedback_sample_rate"></a> [sns\_topic\_sqs\_success\_feedback\_sample\_rate](#input\_sns\_topic\_sqs\_success\_feedback\_sample\_rate) | Percentage of success to sample | `string` | `null` | no |
| <a name="input_sns_topic_tags"></a> [sns\_topic\_tags](#input\_sns\_topic\_tags) | Key-value map of resource tags. If configured with a provider default\_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level | `map(string)` | `{}` | no |
| <a name="input_use_sns_topic_name_prefix"></a> [use\_sns\_topic\_name\_prefix](#input\_use\_sns\_topic\_name\_prefix) | Determinate to use `name_prefix` or not | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sns_subscription_arn"></a> [sns\_subscription\_arn](#output\_sns\_subscription\_arn) | ARN of the subscription |
| <a name="output_sns_subscription_confirmation_was_authenticated"></a> [sns\_subscription\_confirmation\_was\_authenticated](#output\_sns\_subscription\_confirmation\_was\_authenticated) | Whether the subscription confirmation request was authenticated |
| <a name="output_sns_subscription_id"></a> [sns\_subscription\_id](#output\_sns\_subscription\_id) | ARN of the subscription |
| <a name="output_sns_subscription_owner_id"></a> [sns\_subscription\_owner\_id](#output\_sns\_subscription\_owner\_id) | AWS account ID of the subscription's owner |
| <a name="output_sns_subscription_pending_confirmation"></a> [sns\_subscription\_pending\_confirmation](#output\_sns\_subscription\_pending\_confirmation) | Whether the subscription has not been confirmed |
| <a name="output_sns_topic_arn"></a> [sns\_topic\_arn](#output\_sns\_topic\_arn) | The ARN of the SNS topic, as a more obvious property (clone of id) |
| <a name="output_sns_topic_id"></a> [sns\_topic\_id](#output\_sns\_topic\_id) | The ARN of the SNS topic |
| <a name="output_sns_topic_name"></a> [sns\_topic\_name](#output\_sns\_topic\_name) | The ARN of the SNS topic |
| <a name="output_sns_topic_owner"></a> [sns\_topic\_owner](#output\_sns\_topic\_owner) | The AWS Account ID of the SNS topic owner |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->