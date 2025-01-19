output "get_lambda_function_name" {
  value = aws_lambda_function.get_student_data.function_name
}

output "insert_lambda_function_name" {
  value = aws_lambda_function.insert_student_data.function_name
}


output "get_lambda_function_arn" {
  description = "ARN of the GetStudentData Lambda function"
  value       = aws_lambda_function.get_student_data.invoke_arn
}

output "insert_lambda_function_arn" {
  description = "ARN of the InsertStudentData Lambda function"
  value       = aws_lambda_function.insert_student_data.invoke_arn
}

output "iam_role_arn" {
  description = "ARN of the IAM role"
  value       = aws_iam_role.lambda_role.arn
}

output "iam_role_name" {
  description = "Name of the IAM role"
  value       = aws_iam_role.lambda_role.name
}


