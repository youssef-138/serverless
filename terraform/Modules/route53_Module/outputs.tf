output "domain_hostedzone_id" {
  value = data.aws_route53_zone.main.zone_id
}