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
