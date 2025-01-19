resource "aws_api_gateway_integration_response" "get_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_rest_api.api.root_resource_id
  http_method = aws_api_gateway_method.get_method.http_method
  status_code = aws_api_gateway_method_response.get_response.status_code

    response_templates = {
    "application/json" = null
}

 
#   response_parameters = {

#       "method.response.header.Access-Control-Allow-Origin" = "'*'"


#     "method.response.header.Access-Control-Allow-Methods" = "'GET, POST, OPTIONS'",
#    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,X-Requested-With'",
    
#    }

  depends_on = [aws_api_gateway_integration.get_integration]
 }

# Set up integration responses for POST method
resource "aws_api_gateway_integration_response" "post_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_rest_api.api.root_resource_id
  http_method = aws_api_gateway_method.post_method.http_method
  status_code = aws_api_gateway_method_response.post_response.status_code


  
#   response_parameters = {

#      "method.response.header.Access-Control-Allow-Origin" = "'*'"
#     "method.response.header.Access-Control-Allow-Methods" = "'GET, POST, OPTIONS'",
#     "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,X-Requested-With'"
    
#   }

  depends_on = [aws_api_gateway_integration.post_integration]
}

