
resource "aws_lambda_function" "get_student_data" {
  function_name = var.get_function_name
  runtime       = var.runtime
  handler       = var.get_handler
  role          = aws_iam_role.lambda_role.arn
  filename      = var.get_lambda_zip_path
  timeout       = var.timeout
}

resource "aws_lambda_function" "insert_student_data" {
  function_name = var.insert_function_name
  runtime       = var.runtime
  handler       = var.insert_handler
  role          = aws_iam_role.lambda_role.arn
  filename      = var.insert_lambda_zip_path
  timeout       = var.timeout
}
