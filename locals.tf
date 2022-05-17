locals {
  sns_topic_name        = var.use_sns_topic_name_prefix ? null : var.sns_topic_name
  sns_topic_name_prefix = var.use_sns_topic_name_prefix ? format("%s-", var.sns_topic_name) : null

  sns_subscription_topic_arn = var.create_sns_topic ? module.sns_topic[0].id : var.sns_subscription_topic_arn
}
