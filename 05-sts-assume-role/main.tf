provider "aws" {
  region  = "ap-south-1"
  profile = "base-profile"
  assume_role {
    role_arn = "arn:aws:iam::<account-id>:role/<target-role-name>"
  }
}

