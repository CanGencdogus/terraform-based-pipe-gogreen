  
  terraform {

  backend "s3" {
    encrypt = true
    bucket  = "gogreen-3tier-tf-state-2"
    region  = "us-west-1"
    key     = "terraform/state/gogreencdn.tfstate"
  }
}

provider "aws" {
  region = "us-west-1"

}
resource "aws_s3_bucket" "gogreen" {
  bucket = "gogreen-team1-bucket-102"
  acl    = "private"

  tags = {
    Name        = "My tf bucket"
    Environment = "dev"
  }
}