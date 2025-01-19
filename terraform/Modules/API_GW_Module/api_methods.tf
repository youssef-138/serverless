resource "aws_api_gateway_method" "get_method" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  resource_id   = aws_api_gateway_rest_api.api.root_resource_id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "post_method" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  resource_id   = aws_api_gateway_rest_api.api.root_resource_id
  http_method   = "POST"
  authorization = "NONE"

  depends_on = [ aws_api_gateway_method.get_method, aws_api_gateway_integration_response.get_integration_response ]
}

# resource "aws_api_gateway_method" "opt" {
#   depends_on = [ aws_api_gateway_integration_response.get_integration_response, aws_api_gateway_integration_response.post_integration_response ]
#   rest_api_id   = aws_api_gateway_rest_api.api.id
#   resource_id   = aws_api_gateway_rest_api.api.root_resource_id
#   http_method   = "OPTIONS"
#   authorization = "NONE"
#   api_key_required = false
  
   

# }

# resource "aws_api_gateway_integration" "opt" {
#   depends_on = [ aws_api_gateway_method.opt ]
#   rest_api_id = aws_api_gateway_rest_api.api.id
#   resource_id = aws_api_gateway_rest_api.api.root_resource_id
#   http_method = "${aws_api_gateway_method.opt.http_method}"
#   type = "MOCK"
# }

# resource "aws_api_gateway_integration_response" "opt" {
#   rest_api_id = aws_api_gateway_rest_api.api.id
#   resource_id = aws_api_gateway_rest_api.api.root_resource_id
#   http_method = "${aws_api_gateway_method.opt.http_method}"
#   status_code = 200
#   response_parameters = {
#     "method.response.header.Access-Control-Allow-Origin" = "'*'",
#     "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,X-Requested-With'",
#     "method.response.header.Access-Control-Allow-Methods" = "'GET,OPTIONS,POST,PUT'"
#   }
#   depends_on = ["aws_api_gateway_integration.opt", "aws_api_gateway_method_response.opt"]
# }

# resource "aws_api_gateway_method_response" "opt" {
#   rest_api_id = aws_api_gateway_rest_api.api.id
#   resource_id = aws_api_gateway_rest_api.api.root_resource_id
#   http_method = "${aws_api_gateway_method.opt.http_method}"
#   status_code = 200
#   response_parameters = {
#     "method.response.header.Access-Control-Allow-Origin" = true,
#     "method.response.header.Access-Control-Allow-Methods" = true,
#     "method.response.header.Access-Control-Allow-Headers" = true
#   }
#   response_models = {
#     "application/json" = "Empty"
#   }
#    depends_on = ["aws_api_gateway_method.opt"]


# }

