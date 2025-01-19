# API Gateway Module

This Terraform module creates an API Gateway with GET and POST methods, integrated with Lambda functions, and allows customization of integration types and URIs.

## Inputs

- **`api_name`**: Name of the API Gateway.  
  *Type*: `string`

- **`api_description`**: Description of the API Gateway.  
  *Type*: `string`  
  *Default*: `"API Gateway for serverless application"`

- **`get_lambda_function_arn`**: ARN of the Lambda function for the GET method.  
  *Type*: `string`

- **`post_lambda_function_arn`**: ARN of the Lambda function for the POST method.  
  *Type*: `string`

- **`stage_name`**: Stage name for the deployment.  
  *Type*: `string`  
  *Default*: `"prod"`

- **`get_lambda_function_name`**: Name of the Lambda function for the GET method.  
  *Type*: `string`

- **`post_lambda_function_name`**: Name of the Lambda function for the POST method.  
  *Type*: `string`

- **`region`**: AWS region for the API Gateway deployment.  
  *Type*: `string`

- **`get_integration_type`**: Type of integration for the GET method (e.g., `AWS`, `AWS_PROXY`, `MOCK`).  
  *Type*: `string`

- **`get_integration_uri`**: URI for the GET method integration (e.g., Lambda function ARN).  
  *Type*: `string`

- **`post_integration_type`**: Type of integration for the POST method (e.g., `AWS`, `AWS_PROXY`, `MOCK`).  
  *Type*: `string`

- **`post_integration_uri`**: URI for the POST method integration (e.g., Lambda function ARN).  
  *Type*: `string`

## Outputs

- **`api_id`**: ID of the API Gateway.  
  *Description*: Used to reference the API Gateway in other resources.

- **`api_url`**: URL of the deployed API Gateway.  
  *Description*: The base URL to invoke API Gateway.

- **`update_scripts_js`**: Reference to the local file used for updates (if applicable).  




