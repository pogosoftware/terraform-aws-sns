##########################################################################
### SNS_TOPIC
##########################################################################
output "sns_topic_id" {
  description = "The ARN of the SNS topic"
  value       = try(module.sns_topic[0].id, "")
}

output "sns_topic_name" {
  description = "The ARN of the SNS topic"
  value       = try(module.sns_topic[0].name, "")
}

output "sns_topic_arn" {
  description = "The ARN of the SNS topic, as a more obvious property (clone of id)"
  value       = try(module.sns_topic[0].arn, "")
}

output "sns_topic_owner" {
  description = "The AWS Account ID of the SNS topic owner"
  value       = try(module.sns_topic[0].owner, "")
}

##########################################################################
### SNS_SUBSCRIPTION
##########################################################################
output "sns_subscription_arn" {
  description = "ARN of the subscription"
  value       = try(module.sns_subscription[0].arn, "")
}

output "sns_subscription_confirmation_was_authenticated" {
  description = "Whether the subscription confirmation request was authenticated"
  value       = try(module.sns_subscription[0].confirmation_was_authenticated, "")
}

output "sns_subscription_id" {
  description = "ARN of the subscription"
  value       = try(module.sns_subscription[0].id, "")
}

output "sns_subscription_owner_id" {
  description = "AWS account ID of the subscription's owner"
  value       = try(module.sns_subscription[0].owner_id, "")
}

output "sns_subscription_pending_confirmation" {
  description = "Whether the subscription has not been confirmed"
  value       = try(module.sns_subscription[0].pending_confirmation, "")
}
