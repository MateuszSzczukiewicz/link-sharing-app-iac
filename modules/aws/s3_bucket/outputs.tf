output "bucket_id" {
  value       = aws_s3_bucket.s3_bucket.id
  description = "The ID of the S3 bucket"
}

output "bucket_arn" {
  value       = aws_s3_bucket.s3_bucket.arn
  description = "The ARN of the S3 bucket"
}
