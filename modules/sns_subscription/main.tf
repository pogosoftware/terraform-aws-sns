resource "aws_sns_topic_subscription" "this" {
  endpoint                        = var.endpoint
  protocol                        = var.protocol
  subscription_role_arn           = var.subscription_role_arn
  topic_arn                       = var.topic_arn
  confirmation_timeout_in_minutes = var.confirmation_timeout_in_minutes
  delivery_policy                 = var.delivery_policy
  endpoint_auto_confirms          = var.endpoint_auto_confirms
  filter_policy                   = var.filter_policy
  raw_message_delivery            = var.raw_message_delivery
  redrive_policy                  = var.redrive_policy
}
