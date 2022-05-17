# Module: aws_sns_topic_subscription

Provides a resource for subscribing to SNS topics. Requires that an SNS topic exist for the subscription to attach to. This resource allows you to automatically place messages sent to SNS topics in SQS queues, send them as HTTP(S) POST requests to a given endpoint, send SMS messages, or notify devices / applications. The most likely use case for Terraform users will probably be SQS queues.

> **_NOTE:_** <br>
If the SNS topic and SQS queue are in different AWS regions, the `aws_sns_topic_subscription` must use an AWS provider that is in the same region as the SNS topic. If the `aws_sns_topic_subscription` uses a provider with a different region than the SNS topic, Terraform will fail to create the subscription.

> **_NOTE:_** <br>
Setup of cross-account subscriptions from SNS topics to SQS queues requires Terraform to have access to BOTH accounts.

> **_NOTE:_** <br>
If an SNS topic and SQS queue are in different AWS accounts but the same region, the `aws_sns_topic_subscription` must use the AWS provider for the account with the SQS queue. If `aws_sns_topic_subscription` uses a Provider with a different account than the SQS queue, Terraform creates the subscription but does not keep state and tries to re-create the subscription at every `apply`.

> **_NOTE:_** <br>
If an SNS topic and SQS queue are in different AWS accounts and different AWS regions, the subscription needs to be initiated from the account with the SQS queue but in the region of the SNS topic.

> **_NOTE:_** <br>
You cannot unsubscribe to a subscription that is pending confirmation. If you use `email`, `email-json`, or `http/https` (without auto-confirmation enabled), until the subscription is confirmed (e.g., outside of Terraform), AWS does not allow Terraform to delete / unsubscribe the subscription. If you `destroy` an unconfirmed subscription, Terraform will remove the subscription from its state but the subscription will still exist in AWS. However, if you delete an SNS topic, SNS [deletes all the subscriptions](https://docs.aws.amazon.com/sns/latest/dg/sns-delete-subscription-topic.html) associated with the topic. Also, you can import a subscription after confirmation and then have the capability to delete it.

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
| [aws_sns_topic_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_confirmation_timeout_in_minutes"></a> [confirmation\_timeout\_in\_minutes](#input\_confirmation\_timeout\_in\_minutes) | Integer indicating number of minutes to wait in retrying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols. Default is 1 | `number` | `1` | no |
| <a name="input_delivery_policy"></a> [delivery\_policy](#input\_delivery\_policy) | JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription - this only applies to HTTP/S subscriptions | `string` | `null` | no |
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | Endpoint to send data to. The contents vary with the protocol | `string` | n/a | yes |
| <a name="input_endpoint_auto_confirms"></a> [endpoint\_auto\_confirms](#input\_endpoint\_auto\_confirms) | Whether the endpoint is capable of auto confirming subscription (e.g., PagerDuty). Default is `false` | `bool` | `false` | no |
| <a name="input_filter_policy"></a> [filter\_policy](#input\_filter\_policy) | JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource | `string` | `null` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | Protocol to use. Valid values are: sqs, sms, lambda, firehose, and application. Protocols email, email-json, http and https are also valid but partially supported | `string` | n/a | yes |
| <a name="input_raw_message_delivery"></a> [raw\_message\_delivery](#input\_raw\_message\_delivery) | Whether to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property). Default is false | `bool` | `false` | no |
| <a name="input_redrive_policy"></a> [redrive\_policy](#input\_redrive\_policy) | JSON String with the redrive policy that will be used in the subscription | `string` | `null` | no |
| <a name="input_subscription_role_arn"></a> [subscription\_role\_arn](#input\_subscription\_role\_arn) | ARN of the IAM role to publish to Kinesis Data Firehose delivery stream | `string` | n/a | yes |
| <a name="input_topic_arn"></a> [topic\_arn](#input\_topic\_arn) | ARN of the SNS topic to subscribe to | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the subscription |
| <a name="output_confirmation_was_authenticated"></a> [confirmation\_was\_authenticated](#output\_confirmation\_was\_authenticated) | Whether the subscription confirmation request was authenticated |
| <a name="output_id"></a> [id](#output\_id) | ARN of the subscription |
| <a name="output_owner_id"></a> [owner\_id](#output\_owner\_id) | AWS account ID of the subscription's owner |
| <a name="output_pending_confirmation"></a> [pending\_confirmation](#output\_pending\_confirmation) | Whether the subscription has not been confirmed |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->