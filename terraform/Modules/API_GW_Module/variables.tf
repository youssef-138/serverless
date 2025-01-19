variable "api_name" {
  description = "Name of the API Gateway"
  type        = string
}

variable "api_description" {
  description = "Description of the API Gateway"
  type        = string
  default     = "API Gateway for serverless application"
}

variable "get_lambda_function_arn" {
  description = "ARN of the Lambda function for GET method"
  type        = string
}

variable "post_lambda_function_arn" {
  description = "ARN of the Lambda function for POST method"
  type        = string
}

variable "stage_name" {
  description = "Stage name for the deployment"
  type        = string
  default     = "prod"
}
variable "get_lambda_function_name" {
  description = "Name of the Lambda function for the GET method"
  type        = string
}

variable "post_lambda_function_name" {
  description = "Name of the Lambda function for the POST method"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}


variable "get_integration_type" {
  description = "Type of API Gateway integration (e.g., AWS, AWS_PROXY, MOCK)"
  type        = string
}

variable "get_integration_uri" {
  description = "URI for the API Gateway integration (e.g., Lambda function ARN or other backend service)"
  type        = string
}

variable "post_integration_type" {
  description = "Type of API Gateway integration (e.g., AWS, AWS_PROXY, MOCK)"
  type        = string
}

variable "post_integration_uri" {
  description = "URI for the API Gateway integration (e.g., Lambda function ARN or other backend service)"
  type        = string
}

variable "api_domain_name" {
  description = "api domain name "
  type        = string
}

variable "acm_arn" {
  type = string
}

