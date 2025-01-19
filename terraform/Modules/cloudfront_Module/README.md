# CloudFront Module

This module creates an AWS CloudFront distribution and integrates it with an S3 bucket using Origin Access Control (OAC).

## Inputs

- **`oac_name`**: The name of the Origin Access Control.  
  *Type*: `string`

- **`oac_description`**: A description of the Origin Access Control.  
  *Type*: `string`

- **`bucket_id`**: The ID of the S3 bucket to be used with the CloudFront distribution.  
  *Type*: `string`

- **`bucket_arn`**: The ARN of the S3 bucket to be used with the CloudFront distribution.  
  *Type*: `string`

- **`bucket_domain_name`**: The regional domain name of the S3 bucket.  
  *Type*: `string`

- **`origin_id`**: The Origin ID for the CloudFront distribution.  
  *Type*: `string`

- **`default_root_object`**: The default root object for the CloudFront distribution (e.g., `index.html`).  
  *Type*: `string`  
  *Default*: `"index.html"`

- **`allowed_methods`**: List of allowed methods for the default cache behavior.  
  *Type*: `list(string)`  
  *Default*: `["GET", "HEAD"]`

- **`cached_methods`**: List of cached methods for the default cache behavior.  
  *Type*: `list(string)`  
  *Default*: `["GET", "HEAD"]`

- **`query_string`**: Whether to forward query strings.  
  *Type*: `bool`  
  *Default*: `false`

- **`cookie_forwarding`**: Cookie forwarding behavior (e.g., `none`, `all`, `whitelist`).  
  *Type*: `string`  
  *Default*: `"none"`

- **`viewer_protocol_policy`**: Viewer protocol policy for the default cache behavior (e.g., `allow-all`, `redirect-to-https`).  
  *Type*: `string`  
  *Default*: `"redirect-to-https"`

- **`min_ttl`**: Minimum TTL (Time to Live) for objects in the cache.  
  *Type*: `number`  
  *Default*: `0`

- **`default_ttl`**: Default TTL for objects in the cache.  
  *Type*: `number`  
  *Default*: `3600`

- **`max_ttl`**: Maximum TTL for objects in the cache.  
  *Type*: `number`  
  *Default*: `86400`

- **`price_class`**: Price class for the CloudFront distribution.  
  *Type*: `string`  
  *Default*: `"PriceClass_All"`

- **`geo_restriction_type`**: Geo-restriction type for the CloudFront distribution.  
  *Type*: `string`  
  *Default*: `"none"`

- **`acm_arn`**: The ARN of the ACM certificate to associate with CloudFront.  
  *Type*: `string`

- **`cloudfront_aliases`**: List of aliases (CNAMEs) for the CloudFront distribution.  
  *Type*: `list(string)`

## Outputs

- **`cloudfront_distribution_domain`**: The domain name of the CloudFront distribution.  
  *Description*: The URL that can be used to access the content via the CloudFront distribution.  
  *Value*: `aws_cloudfront_distribution.distribution.domain_name`

- **`cloudfront_distribution_hosted_zone_id`**: The hosted zone ID of the CloudFront distribution.  
  *Description*: The hosted zone ID used to set up DNS records for the CloudFront distribution.  
  


