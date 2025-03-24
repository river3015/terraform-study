output "first_arn" {
  value = aws_iam_user.this[0].arn
  description = "The ARN of the first user"
}

output "all_arns" {
  value = aws_iam_user.this[*].arn
  description = "The ARNs of all users"
}