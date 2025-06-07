# AWS SSO Authentication (IAM Identity Center)

## 🔍 Overview
AWS SSO (IAM Identity Center) allows secure, centralized login and access to AWS accounts. It eliminates the need to manage long-term access keys by providing temporary credentials through a secure login flow.

## ✅ Prerequisites
- IAM Identity Center must be enabled in the AWS Org
- SSO user created and assigned to an account with a permission set
- `aws` CLI v2 installed

## 🛠 Steps

1. Configure your SSO profile:

   ```bash
   aws configure sso

