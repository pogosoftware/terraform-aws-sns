##########################################################################
### SNS_TOPIC
##########################################################################
variable "create_sns_topic" {
  default     = true
  description = "Determinate to create `sns_topic` resource or not"
  type        = bool
}
variable "sns_topic_name" {
  default     = null
  description = "Required if `use_sns_topic_name_prefix` is set to `true`. The name of the topic. Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. For a FIFO (first-in-first-out) topic, the name must end with the .fifo suffix. If omitted, Terraform will assign a random, unique name"
  type        = string
}

variable "use_sns_topic_name_prefix" {
  default     = false
  description = "Determinate to use `name_prefix` or not"
  type        = bool
}

variable "sns_topic_display_name" {
  default     = null
  description = "The display name for the topic"
  type        = string
}

variable "sns_topic_policy" {
  default     = null
  description = "The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide."
  type        = string
}

variable "sns_topic_delivery_policy" {
  default     = null
  description = "The SNS delivery policy"
  type        = string
}

variable "sns_topic_application_success_feedback_role_arn" {
  default     = null
  description = "IAM role permitted to receive success feedback for this topic"
  type        = string
}

variable "sns_topic_application_success_feedback_sample_rate" {
  default     = null
  description = "Percentage of success to sample"
  type        = string
}

variable "sns_topic_application_failure_feedback_role_arn" {
  default     = null
  description = "IAM role for failure feedback"
  type        = string
}

variable "sns_topic_http_success_feedback_role_arn" {
  default     = null
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = string
}

variable "sns_topic_http_success_feedback_sample_rate" {
  default     = null
  description = "Percentage of success to sample"
  type        = string
}

variable "sns_topic_http_failure_feedback_role_arn" {
  default     = null
  description = "IAM role for failure feedback"
  type        = string
}

variable "sns_topic_kms_master_key_id" {
  default     = null
  description = "The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK"
  type        = string
}

variable "sns_topic_fifo_topic" {
  default     = false
  description = "Boolean indicating whether or not to create a FIFO (first-in-first-out) topic (default is false)"
  type        = bool
}

variable "sns_topic_content_based_deduplication" {
  default     = null
  description = "Enables content-based deduplication for FIFO topics"
  type        = string
}

variable "sns_topic_lambda_success_feedback_role_arn" {
  default     = null
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = string
}

variable "sns_topic_lambda_success_feedback_sample_rate" {
  default     = null
  description = "Percentage of success to sample"
  type        = string
}

variable "sns_topic_lambda_failure_feedback_role_arn" {
  default     = null
  description = "IAM role for failure feedback"
  type        = string
}

variable "sns_topic_sqs_success_feedback_role_arn" {
  default     = null
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = string
}

variable "sns_topic_sqs_success_feedback_sample_rate" {
  default     = null
  description = "Percentage of success to sample"
  type        = string
}

variable "sns_topic_sqs_failure_feedback_role_arn" {
  default     = null
  description = "IAM role for failure feedback"
  type        = string
}

variable "sns_topic_firehose_success_feedback_role_arn" {
  default     = null
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = string
}

variable "sns_topic_firehose_success_feedback_sample_rate" {
  default     = null
  description = "Percentage of success to sample"
  type        = string
}

variable "sns_topic_firehose_failure_feedback_role_arn" {
  default     = null
  description = "IAM role for failure feedback"
  type        = string
}

variable "sns_topic_tags" {
  default     = {}
  description = "Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level"
  type        = map(string)
}
