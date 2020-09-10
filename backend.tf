terraform {
  backend "s3" {
    bucket = "pipeline-rady-bucket"
    key    = "myec2/ec2-rady-for-terraform-web"
    region = "us-west-2"
  }
}