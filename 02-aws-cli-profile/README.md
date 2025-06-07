# Method 02 – Authenticate with AWS CLI Named Profile

This example demonstrates how to configure Terraform to authenticate with AWS using a **named AWS CLI profile**. This is one of the cleanest and most secure ways to manage credentials **locally** without hardcoding access keys in Terraform files.

---

## ✅ When to Use

Use this method when:
- You're working locally on your machine
- You have multiple AWS profiles (e.g., dev, prod, personal)
- You want to avoid hardcoding access keys in code

---

## 🔐 Prerequisites

1. **AWS CLI installed**  
   You can install it from [AWS CLI official docs](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

2. **Configure a named profile**  
   Run the following command to configure a profile:
   ```bash
   aws configure --profile demo-profile

