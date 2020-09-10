provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "testis" {
        bucket = "Radko-test-rady-show-useful-lambda"
        acl    = "public"
}