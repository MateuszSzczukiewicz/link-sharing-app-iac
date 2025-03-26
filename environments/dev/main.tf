module "s3_bucket" {
  source = "../../modules/aws/s3_bucket"

  bucket_name = var.bucket_name
  acl         = "private"
  tags = {
    Environment = "Dev"
  }
  versioning_enabled = true
}

module "iam_user" {
  source = "../../modules/aws/iam_user"

  user_name   = var.user_name
  bucket_name = module.s3_bucket.bucket_name
}

output "bucket_id" {
  value       = module.s3_bucket.bucket_id
  description = "The ID of the S3 bucket"
}

output "user_name" {
  value       = module.iam_user.user_name
  description = "The name of the IAM user"
}

output "access_key_id" {
  value       = module.iam_user.access_key_id
  description = "The ID of the IAM access key"
  sensitive   = true
}

output "secret_access_key" {
  value       = module.iam_user.secret_access_key
  description = "The secret access key of the IAM user"
  sensitive   = true
}
