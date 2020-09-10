provider "aws" {
  region = "us-west-2"
}

resource "aws_iam_user" "rady-idiot" {
  name = "loadbalancer"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}