#Create the deployment for the API
resource "aws_api_gateway_deployment" "deployment" {
  depends_on = [
    #  aws_api_gateway_integration_response.opt,
    aws_api_gateway_integration.get_integration,
    aws_api_gateway_integration.post_integration,
    aws_api_gateway_integration_response.get_integration_response,
    aws_api_gateway_integration_response.post_integration_response,
    aws_api_gateway_method_response.get_response,
    aws_api_gateway_method_response.post_response,
    aws_api_gateway_method.get_method,
    aws_api_gateway_method.post_method
  ]

  rest_api_id = aws_api_gateway_rest_api.api.id
  stage_name  = var.stage_name
}