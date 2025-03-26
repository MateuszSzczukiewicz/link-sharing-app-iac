variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket"
}

variable "acl" {
  type        = string
  description = "The ACL of the S3 bucket"
  default     = "private"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to add to the S3 bucket"
  default     = {}
}

variable "versioning_enabled" {
  type        = bool
  description = "Whether versioning is enabled on the S3 bucket"
  default     = true
}
