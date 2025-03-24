# output "first_arn" {
#   value = aws_iam_user.this["trinity"].arn
# }

output "all_users" {
  value = aws_iam_user.this
}

output "all_arns" {
  value = values(aws_iam_user.this)[*].arn
}