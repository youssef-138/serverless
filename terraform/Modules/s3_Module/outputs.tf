output "website_url" {
  description = "The website endpoint for the S3 bucket."
  value       = aws_s3_bucket.this.website_endpoint
}

output "bucket_id" {
  value = aws_s3_bucket.this.id
}

output "bucket_arn" {
  value = aws_s3_bucket.this.arn
}

output "bucket_domain_name" {
  value = aws_s3_bucket.this.bucket_regional_domain_name
}
