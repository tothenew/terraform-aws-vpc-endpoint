locals {
  project_name_prefix = var.project_name_prefix
  common_tags         = var.common_tags
  region_name         = data.aws_region.current.name
  cidr_block          = data.aws_vpc.selected.cidr_block
  security_group_id   = var.security_group_id == "" ? aws_security_group.vpc_endpoint_sg[0].id : var.security_group_id
}
