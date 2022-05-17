output "id" {
  description = "The ARN of the SNS topic"
  value       = aws_sns_topic.this.id
}

output "name" {
  description = "The ARN of the SNS topic"
  value       = aws_sns_topic.this.name
}

output "arn" {
  description = "The ARN of the SNS topic, as a more obvious property (clone of id)"
  value       = aws_sns_topic.this.arn
}

output "owner" {
  description = "The AWS Account ID of the SNS topic owner"
  value       = aws_sns_topic.this.owner
}
