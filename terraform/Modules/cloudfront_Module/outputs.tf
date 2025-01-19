output "cloudfront_distribution_domain" {
  description = "The domain name of the CloudFront distribution."
  value       = aws_cloudfront_distribution.distribution.domain_name
}

output "cloudfront_distribution_hosted_zone_id" {
    value = aws_cloudfront_distribution.distribution.hosted_zone_id
}
