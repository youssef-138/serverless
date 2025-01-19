# Allow API Gateway to invoke the GetStudentData Lambda function
# Allow API Gateway to invoke the GetStudentData Lambda function
resource "aws_lambda_permission" "allow_get_invoke" {
  statement_id  = "AllowGetInvoke"
  action        = "lambda:InvokeFunction"
  function_name = var.get_lambda_function_name
  principal     = "apigateway.amazonaws.com"

  source_arn = "${aws_api_gateway_rest_api.api.execution_arn}/*/*"


  
}

# Allow API Gateway to invoke the InsertStudentData Lambda function
resource "aws_lambda_permission" "allow_post_invoke" {
  statement_id  = "AllowPostInvoke"
  action        = "lambda:InvokeFunction"
  function_name = var.post_lambda_function_name
  principal     = "apigateway.amazonaws.com"

  source_arn = "${aws_api_gateway_rest_api.api.execution_arn}/*/*"
  
}
