output "user_name" {
  value       = aws_iam_user.iam_user.name
  description = "The name of the IAM user"
}

output "access_key_id" {
  value       = aws_iam_access_key.access_key.id
  description = "The ID of the IAM access key"
  sensitive   = true
}

output "secret_access_key" {
  value       = aws_iam_access_key.access_key.secret
  description = "The secret of the IAM access key"
  sensitive   = true
}
