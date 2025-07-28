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
- main.tf # EC2 and S3 resource definitions
- provider.tf # AWS provider config
- variables.tf # Input variables
- output.tf # Output values (e.g., public IP)
- data.tf # Data sources for default VPC and AMI


### 📤 Outputs

After `terraform apply`, you’ll see:
ec2_public_ip = "18.118.78.206"
s3_bucket_name = "sundin-portfolio-bucket"
