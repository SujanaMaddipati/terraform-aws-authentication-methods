terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region  = "ap-south-1"
  profile = "terraform-user"
}

resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "terraform-cli-demo-${random_id.bucket_id.hex}"

  tags = {
    Name        = "TerraformDemoCLI"
    Environment = "Dev"
  }
}



