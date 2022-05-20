##########################################################################
### REQUIRED
##########################################################################
variable "arn" {
  description = "The ARN of the SNS topic"
  type        = string
}

variable "policy" {
  description = "The fully-formed AWS policy as JSON"
  type        = string
}
