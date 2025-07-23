# provider.tf
provider "aws" {
  region = "us-east-2"
}

# ec2.tf
resource "aws_key_pair" "ec2_key" {
  key_name   = "ec2-cicd-key-713"
  public_key = file("~/.ssh/ec2-cicd-key-713.pub")
}

resource "aws_security_group" "ec2_sg" {
  name        = "ec2-sg"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "ec2_instance" {
  ami                         = "ami-0c55b159cbfafe1f0" # Amazon Linux 2023
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.ec2_key.key_name
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "cloud-ec2-instance"
  }
}

# s3.tf
resource "aws_s3_bucket" "portfolio_bucket" {
  bucket = "sundin-portfolio-bucket-${random_id.bucket_suffix.hex}"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name = "sundin-portfolio-bucket"
  }
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

# outputs.tf
output "ec2_public_ip" {
  value = aws_instance.ec2_instance.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.portfolio_bucket.bucket
} 

# variables.tf
variable "aws_region" {
  default = "us-east-2"
}
