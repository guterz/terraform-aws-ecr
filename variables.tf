variable "name" {
  type        = string
  description = "Name of the ECR Repository"
}

variable "image_tag_mutability" {
  type        = string
  description = "The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE."
  default     = "IMMUTABLE"
}

variable "scan_on_push" {
  type        = bool
  description = "Bool that determines if images are scanned after being pushed to repo."
  default     = true
}

variable "encryption_type" {
  description = "The encryption type for the repository. Must be one of: `KMS` or `AES256`. Defaults to `AES256`"
  type        = string
  default     = null
}

variable "kms_key" {
  description = "The ARN of the KMS key to use when encryption_type is `KMS`. If not specified, uses the default AWS managed key for ECR"
  type        = string
  default     = null
}

variable "policy_enabled" {
  type        = bool
  description = "Bool to enable or disable ECR repository policy"
  default     = false
}

variable "policy" {
  type        = string
  description = "The ECR policy document"
  default     = ""
}

variable "tags" {
  description = "Map of tags to apply"
  type        = map(string)
  default     = {}
}
