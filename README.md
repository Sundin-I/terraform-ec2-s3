# ☁️ Terraform AWS EC2 + S3 Infrastructure

This project provisions a basic cloud infrastructure on AWS using Terraform. It creates:

- 🖥️ An EC2 instance (`t2.micro`) running in the default VPC
- 📦 An S3 bucket named `sundin-portfolio-bucket` for storage

---

## 🔧 Tools Used

- [Terraform v1.12.2](https://developer.hashicorp.com/terraform/downloads)
- AWS CLI
- GitHub

---

## 📁 File Structure

terraform-ec2-s3/
├── main.tf # EC2 and S3 resource definitions
├── provider.tf # AWS provider config
├── variables.tf # Input variables
├── output.tf # Output values (e.g., public IP)
├── data.tf # Data sources for default VPC and AMI


---

## 🚀 Getting Started

### 1. ✅ Prerequisites

- AWS credentials with IAM permissions to manage EC2 and S3
- Terraform installed
- An existing key pair in the AWS region you're deploying to

### 2. 📦 Initialize Terraform

```bash
terraform init
