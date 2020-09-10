provider "aws" {
  region = "us-west-2"
}

module "iam_user1" {
  source = "github.com/terraform-aws-modules/terraform-aws-iam"

  name = "rady-idiot"

  create_iam_user_login_profile = false
  create_iam_access_key         = false
}