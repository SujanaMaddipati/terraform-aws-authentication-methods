# Method 01: AWS Access Keys (Basic)

This demo shows how to authenticate Terraform with AWS using static access keys directly inside the provider block.

⚠️ **This method is NOT recommended for production.** Use only for local learning or short-lived tests.

## 🚀 How It Works

1. An IAM user is created with programmatic access.
2. Access keys are directly placed into `main.tf`.
3. Terraform uses those credentials to create a test S3 bucket.

## 🔧 Steps to Run

```bash
terraform init
terraform plan
terraform apply
