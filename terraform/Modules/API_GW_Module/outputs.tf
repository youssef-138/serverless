output "api_id" {
  description = "ID of the API Gateway"
  value       = aws_api_gateway_rest_api.api.id
}

output "api_url" {
  description = "URL of the deployed API Gateway"
  value       = aws_api_gateway_deployment.deployment.invoke_url
}

output "update_scripts_js" {
  value = local_file.update_scripts_js
}

output "api_domain_name" {
  value = aws_api_gateway_domain_name.api_gateway_domain.domain_name
}