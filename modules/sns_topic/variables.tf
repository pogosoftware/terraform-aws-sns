##########################################################################
### REQUIRED
##########################################################################
variable "name" {
  description = "The name of the topic. Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. For a FIFO (first-in-first-out) topic, the name must end with the .fifo suffix. If omitted, Terraform will assign a random, unique name"
  type        = string
}

##########################################################################
### OPTIONAL
##########################################################################
variable "name_prefix" {
  default     = null
  description = "Creates a unique name beginning with the specified prefix. Conflicts with name"
  type        = string
}

variable "display_name" {
  default     = null
  description = "The display name for the topic"
  type        = string
}

variable "policy" {
  default     = null
  description = "The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide."
  type        = string
}

variable "delivery_policy" {
  default     = null
  description = "The SNS delivery policy"
  type        = string
}

variable "application_success_feedback_role_arn" {
  default     = null
  description = "IAM role permitted to receive success feedback for this topic"
  type        = string
}

variable "application_success_feedback_sample_rate" {
  default     = null
  description = "Percentage of success to sample"
  type        = string
}

variable "application_failure_feedback_role_arn" {
  default     = null
  description = "IAM role for failure feedback"
  type        = string
}

variable "http_success_feedback_role_arn" {
  default     = null
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = string
}

variable "http_success_feedback_sample_rate" {
  default     = null
  description = "Percentage of success to sample"
  type        = string
}

variable "http_failure_feedback_role_arn" {
  default     = null
  description = "IAM role for failure feedback"
  type        = string
}

variable "kms_master_key_id" {
  default     = null
  description = "The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK"
  type        = string
}

variable "fifo_topic" {
  default     = false
  description = "Boolean indicating whether or not to create a FIFO (first-in-first-out) topic (default is false)"
  type        = bool
}

variable "content_based_deduplication" {
  default     = null
  description = "Enables content-based deduplication for FIFO topics"
  type        = string
}

variable "lambda_success_feedback_role_arn" {
  default     = null
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = string
}

variable "lambda_success_feedback_sample_rate" {
  default     = null
  description = "Percentage of success to sample"
  type        = string
}

variable "lambda_failure_feedback_role_arn" {
  default     = null
  description = "IAM role for failure feedback"
  type        = string
}

variable "sqs_success_feedback_role_arn" {
  default     = null
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = string
}

variable "sqs_success_feedback_sample_rate" {
  default     = null
  description = "Percentage of success to sample"
  type        = string
}

variable "sqs_failure_feedback_role_arn" {
  default     = null
  description = "IAM role for failure feedback"
  type        = string
}

variable "firehose_success_feedback_role_arn" {
  default     = null
  description = "The IAM role permitted to receive success feedback for this topic"
  type        = string
}

variable "firehose_success_feedback_sample_rate" {
  default     = null
  description = "Percentage of success to sample"
  type        = string
}

variable "firehose_failure_feedback_role_arn" {
  default     = null
  description = "IAM role for failure feedback"
  type        = string
}

variable "tags" {
  default     = {}
  description = "Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level"
  type        = map(string)
}
