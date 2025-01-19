resource "aws_api_gateway_integration" "get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.api.id
  resource_id             = aws_api_gateway_rest_api.api.root_resource_id
  http_method             = aws_api_gateway_method.get_method.http_method
  integration_http_method = "POST"
#   type                    = "AWS_PROXY"
#   uri                     = var.get_lambda_function_arn
    type                = var.get_integration_type # Non-proxy integration
    uri                 = var.get_lambda_function_arn
  
  depends_on = [aws_api_gateway_method.get_method]
}

resource "aws_api_gateway_integration" "post_integration" {
  rest_api_id             = aws_api_gateway_rest_api.api.id
  resource_id             = aws_api_gateway_rest_api.api.root_resource_id
  http_method             = aws_api_gateway_method.post_method.http_method
  integration_http_method = "POST"
#   type                    = "AWS_PROXY"
#   uri                     = var.post_lambda_function_arn
    type                = var.post_integration_type # Non-proxy integration
    uri                 = var.post_lambda_function_arn

  
  depends_on = [aws_api_gateway_method.post_method]
}