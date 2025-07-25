output "bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.portfolio_bucket.bucket
}

output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.portfolio_ec2.public_ip
}
