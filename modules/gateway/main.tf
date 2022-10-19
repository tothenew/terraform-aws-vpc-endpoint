resource "aws_vpc_endpoint" "gateway_endpoint" {
	service_name        = var.service_name
	vpc_id              = var.vpc_id
	vpc_endpoint_type   = "Gateway"
	route_table_ids     = var.route_table_ids
	private_dns_enabled = var.private_dns_enabled
	tags                = var.tags
}
