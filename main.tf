provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI for us-east-2
  instance_type = "t2.micro"

  tags = {
    Name = "MyTerraformEC2"
  }
}

resource "aws_s3_bucket" "portfolio_bucket" {
  bucket = "sundin-portfolio-bucket"
  acl    = "private"

  tags = {
    Name        = "S3Bucket"
    Environment = "Dev"
  }
}
