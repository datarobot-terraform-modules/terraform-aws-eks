variable "enabled" {
  description = "A conditional indicator to enable"
  type        = bool
  default     = true
}

variable "namespace" {
  description = "The namespace where kubernetes service account is"
  type        = string
}

variable "serviceaccount" {
  description = "The name of kubernetes service account"
  type        = string
}

### security
variable "policy_arns" {
  description = "A list of policy ARNs to attach the role"
  type        = list(string)
  default     = []
}

variable "oidc_url" {
  description = "A URL of the OIDC Provider"
  type        = string
}

variable "oidc_arn" {
  description = "An ARN of the OIDC Provider"
  type        = string
}

### description
variable "name" {
  description = "The logical name of the module instance"
  type        = string
  default     = null
}

### tags
variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}

variable "iam_conditional_operator" {
  description = "Conditional indicator for Wildcard Namespace support"
  type = string
  default = "StringEquals"
}
