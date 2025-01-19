module "Lambda_Functions_Module" {
  source               = "/home/youssef/serverless_application/terraform/Modules/Lambda_Functions_Module"
  lambda_role_name     = "lambda_execution_role"
  assume_role_policy   = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Principal": {
          "Service": "lambda.amazonaws.com"
        },
        "Action": "sts:AssumeRole"
      }
    ]
  }
  EOF
  runtime              = "python3.9"
  timeout              = 10
  get_function_name    = "GetStudentData"
  get_handler          = "GetStudentData.lambda_handler"
  get_lambda_zip_path  = "/home/youssef/serverless_application/lambda_functions/GetStudentData.py.zip"
  insert_function_name = "InsertStudentData"
  insert_handler       = "InsertStudentData.lambda_handler"
  insert_lambda_zip_path = "/home/youssef/serverless_application/lambda_functions/InsertStudentData.py.zip"
  role_name                = "lambda_dynamodb_full_access_role"
  assume_role_policy_document       = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
  policy_attachment_name   = "lambda_dynamodb_full_access_attachment"
  policy_arn               = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
}


module "Dynamodb_Module" {
  source         = "/home/youssef/serverless_application/terraform/Modules/Dynamodb_Module"
  table_name     = "studentData"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "studentid"
  hash_key_type  = "S"
  tags = {
    Environment = "Development"
    Project     = "ServerlessApp"
  }
}

module "API_GW_Module" {
  source                  = "/home/youssef/serverless_application/terraform/Modules/API_GW_Module"
  api_name                = "StudentAPI"
  api_description         = "API for student data management"
  get_lambda_function_arn = module.Lambda_Functions_Module.get_lambda_function_arn
  get_lambda_function_name =  module.Lambda_Functions_Module.get_lambda_function_name
  post_lambda_function_arn = module.Lambda_Functions_Module.insert_lambda_function_arn
  post_lambda_function_name = module.Lambda_Functions_Module.insert_lambda_function_name
  get_integration_type = "AWS" # Example
  get_integration_uri  = module.Lambda_Functions_Module.get_lambda_function_arn
  post_integration_type = "AWS" # Example
  post_integration_uri  = module.Lambda_Functions_Module.insert_lambda_function_arn
  region                  = "eu-central-1"
  stage_name              = "prod"
  api_domain_name         = "api.theyoussef.online"
  acm_arn                 = module.ACM_Module.certificate_arn
}

module "s3_Module" {
  source = "/home/youssef/serverless_application/terraform/Modules/s3_Module"

  bucket_name          = "bucket138"
  bucket_acl           = "private"
  index_document       = "index.html"
  index_source_path    = "/home/youssef/serverless_application/frontend-files/index.html"
  scripts_source_path  = "/home/youssef/serverless_application/frontend-files/scripts.js"
}

module "cloudfront_Module" {
  source = "/home/youssef/serverless_application/terraform/Modules/cloudfront_Module"

  oac_name                     = "bucket138-oac"
  oac_description              = "Origin Access Control for bucket138"
  bucket_id                    = module.s3_Module.bucket_id
  bucket_arn                   = module.s3_Module.bucket_arn
  bucket_domain_name           = module.s3_Module.bucket_domain_name
  origin_id                    = "S3-bucket138"
  default_root_object          = "index.html"
  allowed_methods              = ["GET", "HEAD"]
  cached_methods               = ["GET", "HEAD"]
  query_string                 = false
  cookie_forwarding            = "none"
  viewer_protocol_policy       = "redirect-to-https"
  min_ttl                      = 0
  default_ttl                  = 3600
  max_ttl                      = 86400
  price_class                  = "PriceClass_All"
  geo_restriction_type         = "none"
  cloudfront_aliases           = ["www.theyoussef.online"]
  acm_arn                      = module.ACM_Module.certificate_arn
}

module "ACM_Module" {

  source = "/home/youssef/serverless_application/terraform/Modules/ACM_Module"
  hostedzone_id = module.route53_Module.domain_hostedzone_id
  domain_name = "*.theyoussef.online"
  
}

module "route53_Module" {
    source = "/home/youssef/serverless_application/terraform/Modules/route53_Module"
    domain_name = "theyoussef.online"
    cloudfront_distribution_domain_name = module.cloudfront_Module.cloudfront_distribution_domain
    cloudfront_distribution_hostedzone_id = module.cloudfront_Module.cloudfront_distribution_hosted_zone_id
    api_gateway_domain_name = module.API_GW_Module.api_domain_name
}

