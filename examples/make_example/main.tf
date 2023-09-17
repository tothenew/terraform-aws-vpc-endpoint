module "vpc_endpoint" {
  source              = "./terraform-aws-vpc-endpoint"
  vpc_id              = local.workspace.vpc_id
  subnet_ids          = local.workspace.subnet_ids
  route_table_ids     = local.workspace.route_table_ids
  project_name_prefix = local.workspace.project_name_prefix
}