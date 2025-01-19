variable "oac_name" {
  description = "Name of the Origin Access Control."
  type        = string
}

variable "oac_description" {
  description = "Description of the Origin Access Control."
  type        = string
}

variable "bucket_id" {
  description = "ID of the S3 bucket."
  type        = string
}

variable "bucket_arn" {
  description = "ARN of the S3 bucket."
  type        = string
}

variable "bucket_domain_name" {
  description = "Regional domain name of the S3 bucket."
  type        = string
}

variable "origin_id" {
  description = "Origin ID for the CloudFront distribution."
  type        = string
}

variable "default_root_object" {
  description = "Default root object for the CloudFront distribution."
  type        = string
  default     = "index.html"
}

variable "allowed_methods" {
  description = "Allowed methods for the default cache behavior."
  type        = list(string)
  default     = ["GET", "HEAD"]
}

variable "cached_methods" {
  description = "Cached methods for the default cache behavior."
  type        = list(string)
  default     = ["GET", "HEAD"]
}

variable "query_string" {
  description = "Whether to forward query strings."
  type        = bool
  default     = false
}

variable "cookie_forwarding" {
  description = "Cookie forwarding behavior."
  type        = string
  default     = "none"
}

variable "viewer_protocol_policy" {
  description = "Viewer protocol policy for the default cache behavior."
  type        = string
  default     = "redirect-to-https"
}

variable "min_ttl" {
  description = "Minimum TTL for objects in the cache."
  type        = number
  default     = 0
}

variable "default_ttl" {
  description = "Default TTL for objects in the cache."
  type        = number
  default     = 3600
}

variable "max_ttl" {
  description = "Maximum TTL for objects in the cache."
  type        = number
  default     = 86400
}

variable "price_class" {
  description = "Price class for the CloudFront distribution."
  type        = string
  default     = "PriceClass_All"
}

variable "geo_restriction_type" {
  description = "Geo-restriction type for the CloudFront distribution."
  type        = string
  default     = "none"
}

variable "acm_arn" {
  
}

variable "cloudfront_aliases" {
  description = "List of aliases (CNAMEs) for the CloudFront distribution"
  type        = list(string)
   
}

