
---

## ✅ `05-sts-assume-role/README.md`

```markdown
# AWS STS AssumeRole Authentication

## 🔍 Overview
The AssumeRole method uses AWS Security Token Service (STS) to switch roles between accounts or services securely with temporary credentials.

## ✅ Prerequisites

- A **base IAM user** or SSO profile
- An IAM **role** with a trust policy allowing that user to assume it

## 🛠 Role Trust Policy Example

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::<account-id>:user/<user-name>"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}

