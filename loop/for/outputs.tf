# output "first_arn" {
#   value = aws_iam_user.this["trinity"].arn
# }

# output "all_users" {
#   value = aws_iam_user.this
# }

# output "all_arns" {
#   value = values(aws_iam_user.this)[*].arn
# }

# output "upper_names" {
#   value = {for name in var.names : name => name }
# }

# output "bios" {
#   value = {for name, role in var.hero_thousand_faces : upper(name) => upper(role)}
# }

# output "for_directive" {
#   value = "%{ for name in var.names }${name}, %{ endfor }"
# }

output "for_directive_index" {
  value = "%{ for i, name in var.names}(${i}) ${name}, %{ endfor }"
}