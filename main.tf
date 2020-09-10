provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "testis" {
        bucket = "radko-test-rady-show-useful-lambda"
        acl    = "public"
}