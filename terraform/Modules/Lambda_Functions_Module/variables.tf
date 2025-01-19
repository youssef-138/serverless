variable "lambda_role_name" {
  description = "Name of the IAM role for Lambda"
  type        = string
}

variable "assume_role_policy" {
  description = "IAM assume role policy document"
  type        = string
}

variable "runtime" {
  description = "Runtime for the Lambda functions"
  type        = string
  default     = "python3.9"
}

variable "timeout" {
  description = "Timeout for the Lambda functions"
  type        = number
  default     = 10
}

variable "get_function_name" {
  description = "Name of the GetStudentData function"
  type        = string
}

variable "get_handler" {
  description = "Handler for the GetStudentData function"
  type        = string
}

variable "get_lambda_zip_path" {
  description = "Path to the GetStudentData function ZIP file"
  type        = string
}

variable "insert_function_name" {
  description = "Name of the InsertStudentData function"
  type        = string
}

variable "insert_handler" {
  description = "Handler for the InsertStudentData function"
  type        = string
}

variable "insert_lambda_zip_path" {
  description = "Path to the InsertStudentData function ZIP file"
  type        = string
}

variable "role_name" {
  description = "Name of the IAM role for Lambda"
  type        = string
}

variable "assume_role_policy_document" {
  description = "IAM assume role policy document"
  type        = string
}

variable "policy_attachment_name" {
  description = "Name of the policy attachment"
  type        = string
}

variable "policy_arn" {
  description = "ARN of the policy to attach"
  type        = string
}
