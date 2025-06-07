provider "aws" {
  region     = "ap-south-1"
  access_key = "your access key"
  secret_key = "your secret key"
}

resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "terraform-accesskey-demo-${random_id.bucket_id.hex}"
  acl    = "private"

  tags = {
    Name        = "AccessKeyDemo"
    Environment = "Dev"
  }
}
