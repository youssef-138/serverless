# S3 Bucket with Static Hosting and CORS Module

## Overview
This module creates an S3 bucket configured for static website hosting and CORS, and uploads two objects (`index.html` and `scripts.js`) to the bucket.

## Input Variables

- **`bucket_name`**: The name of the S3 bucket.
- **`bucket_acl`**: The ACL for the bucket. Default is `private`.
- **`index_document`**: The default index document for the bucket. Default is `index.html`.
- **`index_source_path`**: Path to the `index.html` source file.
- **`scripts_source_path`**: Path to the `scripts.js` source file.

## Outputs
- **`website_url`**: The website endpoint for the S3 bucket.  
  *Description*: This is the public URL to access the bucket's website content.

- **`bucket_id`**: The unique identifier of the S3 bucket.  
  *Description*: This ID can be used for resource references in other modules.

- **`bucket_arn`**: The Amazon Resource Name (ARN) of the S3 bucket.  
  *Description*: Useful for IAM policies and other AWS integrations.

- **`bucket_domain_name`**: The regional domain name of the S3 bucket.  
  *Description*: Used to interact with the bucket programmatically.

