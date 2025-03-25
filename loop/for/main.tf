terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.92.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

# resource "aws_iam_user" "this" {
#   count = length(var.user_names)
#   name = "test-${var.user_names[count.index]}"
# }

resource "aws_iam_user" "this" {
  for_each = toset(var.names)
  name = each.value
}