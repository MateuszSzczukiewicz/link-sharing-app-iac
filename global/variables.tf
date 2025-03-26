variable "aws_region" {
  type        = string
  description = "The AWS region to create resouces in"
  default     = "us-east-1"
}

variable "account_id" {
  type        = string
  description = "The AWS account ID"
}
