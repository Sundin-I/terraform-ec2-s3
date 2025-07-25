variable "key_name" {
  description = "The name of your existing EC2 key pair"
  type        = string
  default     = "ec2-cicd-key-713"
}

variable "bucket_prefix" {
  description = "Prefix for the S3 bucket"
  type        = string
  default     = "sundin-portfolio-bucket"
}
