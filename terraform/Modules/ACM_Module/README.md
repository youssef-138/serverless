# ACM Module

This Terraform module creates an AWS Certificate Manager (ACM) certificate and validates it using DNS records in a Route 53 hosted zone.

## Inputs

- **`hostedzone_id`**: The ID of the Route 53 hosted zone where the domain is managed.  
  *Type*: `string`

- **`domain_name`**: The domain name for which the certificate will be requested.  
  *Type*: `string`

## Outputs

- **`certificate_arn`**: The Amazon Resource Name (ARN) of the created ACM certificate.  
  *Description*: This ARN is required to associate the certificate with services like CloudFront or API Gateway.

