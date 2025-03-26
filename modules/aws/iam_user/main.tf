resource "aws_iam_user" "iam_user" {
  name = var.user_name
}

resource "aws_iam_policy" "s3_access_policy" {
  name        = "${var.user_name}-s3-access-policy"
  description = "Policy for S3 access"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:ListBucket"
        ],
        Effect = "Allow",
        Resource = [
          "arn:aws:s3:::${var.bucket_name}",
          "arn:aws:s3:::${var.bucket_name}/*"
        ]
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "s3_access_attachment" {
  user       = aws_iam_user.iam_user.name
  policy_arn = aws_iam_policy.s3_access_policy.arn
}

resource "aws_iam_access_key" "access_key" {
  user = aws_iam_user.iam_user.name
}
