resource "aws_api_gateway_domain_name" "api_gateway_domain" {
  domain_name = var.api_domain_name
  regional_certificate_arn = var.acm_arn
  endpoint_configuration {
    types = ["REGIONAL"]
  }
}
resource "aws_api_gateway_base_path_mapping" "dev_mapping" {
  api_id      = aws_api_gateway_rest_api.api.id  # Replace with your API ID
  stage_name  = var.stage_name  # Stage name you want to map to
  domain_name = aws_api_gateway_domain_name.api_gateway_domain.domain_name
}