locals {
  sns_topic_name        = var.use_sns_topic_name_prefix ? null : var.sns_topic_name
  sns_topic_name_prefix = var.use_sns_topic_name_prefix ? format("%s-", var.sns_topic_name) : null
}
