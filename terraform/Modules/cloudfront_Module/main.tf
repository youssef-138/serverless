resource "aws_cloudfront_distribution" "distribution" {
  enabled             = true
  default_root_object = var.default_root_object
  aliases = var.cloudfront_aliases

  origin {
    domain_name               = var.bucket_domain_name
    origin_id                 = var.origin_id
    origin_access_control_id  = aws_cloudfront_origin_access_control.oac.id
  }

  default_cache_behavior {
    allowed_methods  = var.allowed_methods
    cached_methods   = var.cached_methods
    target_origin_id = var.origin_id

    forwarded_values {
      query_string = var.query_string
      cookies {
        forward = var.cookie_forwarding
      }
    }

    viewer_protocol_policy = var.viewer_protocol_policy
    min_ttl                = var.min_ttl
    default_ttl            = var.default_ttl
    max_ttl                = var.max_ttl
  }

  price_class = var.price_class

  restrictions {
    geo_restriction {
      restriction_type = var.geo_restriction_type
    }
  }

  viewer_certificate {
    acm_certificate_arn = var.acm_arn
    ssl_support_method  = "sni-only"
  }
}
