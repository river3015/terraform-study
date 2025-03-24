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

resource "aws_iam_user" "this" {
  count = length(var.user_names)
  name = var.user_names[count.index]
}