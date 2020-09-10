terraform {
  backend "s3" {
    bucket = "radyzone.com"
    key    = "myec2/ec2-rady-for-terraform-web"
    region = "us-east-1"
  }
}