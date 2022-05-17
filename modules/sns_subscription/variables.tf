##########################################################################
### REQUIRED
##########################################################################
variable "endpoint" {
  description = "Endpoint to send data to. The contents vary with the protocol"
  type        = string
}

variable "protocol" {
  description = "Protocol to use. Valid values are: sqs, sms, lambda, firehose, and application. Protocols email, email-json, http and https are also valid but partially supported"
  type        = string
}

variable "subscription_role_arn" {
  description = "ARN of the IAM role to publish to Kinesis Data Firehose delivery stream"
  type        = string
}

variable "topic_arn" {
  description = "ARN of the SNS topic to subscribe to"
  type        = string
}

##########################################################################
### OPTIONAL
##########################################################################
variable "confirmation_timeout_in_minutes" {
  default     = 1
  description = "Integer indicating number of minutes to wait in retrying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols. Default is 1"
  type        = number
}

variable "delivery_policy" {
  default     = null
  description = "JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription - this only applies to HTTP/S subscriptions"
  type        = string
}

variable "endpoint_auto_confirms" {
  default     = false
  description = "Whether the endpoint is capable of auto confirming subscription (e.g., PagerDuty). Default is `false`"
  type        = bool
}

variable "filter_policy" {
  default     = null
  description = "JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource"
  type        = string
}

variable "raw_message_delivery" {
  default     = false
  description = "Whether to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property). Default is false"
  type        = bool
}

variable "redrive_policy" {
  default     = null
  description = "JSON String with the redrive policy that will be used in the subscription"
  type        = string
}
