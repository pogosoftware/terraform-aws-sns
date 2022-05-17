##########################################################################
### SNS_TOPIC
##########################################################################
output "sns_topic_id" {
  description = "The ARN of the SNS topic"
  value       = try(module.sns_topic[0].this.id, "")
}

output "sns_topic_name" {
  description = "The ARN of the SNS topic"
  value       = try(module.sns_topic[0].this.name, "")
}

output "sns_topic_arn" {
  description = "The ARN of the SNS topic, as a more obvious property (clone of id)"
  value       = try(module.sns_topic[0].this.arn, "")
}

output "sns_topic_owner" {
  description = "The AWS Account ID of the SNS topic owner"
  value       = try(module.sns_topic[0].this.owner, "")
}
