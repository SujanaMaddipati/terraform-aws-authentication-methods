# Method 03 – Authenticate with Environment Variables

This example shows how to authenticate Terraform with AWS using **environment variables**. This is a commonly used approach in CI/CD pipelines and automation scripts where credentials are set temporarily in the shell or injected securely at runtime.

---

## ✅ When to Use

Use this method when:
- Running Terraform in automated pipelines (GitHub Actions, Jenkins, etc.)
- You want to avoid storing profiles or credentials in files
- You're using **temporary credentials** via STS or an identity provider

---

## 🔐 Required Environment Variables

Terraform will automatically pick up the following environment variables:

```bash
export AWS_ACCESS_KEY_ID=your_access_key
export AWS_SECRET_ACCESS_KEY=your_secret_key
export AWS_DEFAULT_REGION=us-east-1

