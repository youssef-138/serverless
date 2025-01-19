resource "aws_api_gateway_method_response" "get_response" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_rest_api.api.root_resource_id
  http_method = aws_api_gateway_method.get_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }
#   response_parameters = {
#     "method.response.header.Access-Control-Allow-Origin" = true
#      "method.response.header.Access-Control-Allow-Methods" = true
#      "method.response.header.Access-Control-Allow-Headers" = true
#   }
depends_on = [ aws_api_gateway_integration.get_integration ]
}

# Define the response for the POST method
resource "aws_api_gateway_method_response" "post_response" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_rest_api.api.root_resource_id
  http_method = aws_api_gateway_method.post_method.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }
#   response_parameters = {
#      "method.response.header.Access-Control-Allow-Origin" = true
#      "method.response.header.Access-Control-Allow-Methods" = true
#      "method.response.header.Access-Control-Allow-Headers" = true
#   }
depends_on = [ aws_api_gateway_integration.post_integration ]
}

