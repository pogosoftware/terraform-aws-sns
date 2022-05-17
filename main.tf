module "sns_topic" {
  source = "./modules/sns_topic"

  count = var.create_sns_topic ? 1 : 0

  name                                     = local.sns_topic_name
  name_prefix                              = local.sns_topic_name_prefix
  display_name                             = var.sns_topic_display_name
  policy                                   = var.sns_topic_policy
  delivery_policy                          = var.sns_topic_delivery_policy
  application_success_feedback_role_arn    = var.sns_topic_application_success_feedback_role_arn
  application_success_feedback_sample_rate = var.sns_topic_application_success_feedback_sample_rate
  application_failure_feedback_role_arn    = var.sns_topic_application_failure_feedback_role_arn
  http_success_feedback_role_arn           = var.sns_topic_http_success_feedback_role_arn
  http_success_feedback_sample_rate        = var.sns_topic_http_success_feedback_sample_rate
  http_failure_feedback_role_arn           = var.sns_topic_http_failure_feedback_role_arn
  kms_master_key_id                        = var.sns_topic_kms_master_key_id
  fifo_topic                               = var.sns_topic_fifo_topic
  content_based_deduplication              = var.sns_topic_content_based_deduplication
  lambda_success_feedback_role_arn         = var.sns_topic_lambda_success_feedback_role_arn
  lambda_success_feedback_sample_rate      = var.sns_topic_lambda_success_feedback_sample_rate
  lambda_failure_feedback_role_arn         = var.sns_topic_lambda_failure_feedback_role_arn
  sqs_success_feedback_role_arn            = var.sns_topic_sqs_success_feedback_role_arn
  sqs_success_feedback_sample_rate         = var.sns_topic_sqs_success_feedback_sample_rate
  sqs_failure_feedback_role_arn            = var.sns_topic_sqs_failure_feedback_role_arn
  firehose_success_feedback_role_arn       = var.sns_topic_firehose_success_feedback_role_arn
  firehose_success_feedback_sample_rate    = var.sns_topic_firehose_success_feedback_sample_rate
  firehose_failure_feedback_role_arn       = var.sns_topic_firehose_failure_feedback_role_arn
  tags                                     = var.sns_topic_tags
}

module "sns_subscription" {
  source = "./modules/sns_subscription"

  count = var.create_sns_subscription ? 1 : 0

  endpoint                        = var.sns_subscription_endpoint
  protocol                        = var.sns_subscription_protocol
  subscription_role_arn           = var.sns_subscription_role_arn
  topic_arn                       = local.sns_subscription_topic_arn
  confirmation_timeout_in_minutes = var.sns_subscription_confirmation_timeout_in_minutes
  delivery_policy                 = var.sns_subscription_delivery_policy
  endpoint_auto_confirms          = var.sns_subscription_endpoint_auto_confirms
  filter_policy                   = var.sns_subscription_filter_policy
  raw_message_delivery            = var.sns_subscription_raw_message_delivery
  redrive_policy                  = var.sns_subscription_redrive_policy
}
