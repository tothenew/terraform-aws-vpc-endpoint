module "ssm_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.ssm"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-ssm" }))
}

module "ssm_messages_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.ssmmessages"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-ssm-messages" }))
}

module "ec2_messages_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.ec2messages"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-ec2-messages" }))
}

module "s3_gateway" {
  source          = "./modules/vpc-endpoint/gateway"
  service_name    = "com.amazonaws.${local.region_name}.s3"
  route_table_ids = var.route_table_ids
  vpc_id          = var.vpc_id
  tags            = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-s3" }))
}

module "ec2_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.ec2"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-ec2" }))
}

module "add_interface" {
  count               = length(var.add_interface)
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.${count.index}"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-${replace(count.index, ".", "-")}" }))
}

module "add_gateway" {
  count           = length(var.add_gateway)
  source          = "./modules/vpc-endpoint/gateway"
  service_name    = "com.amazonaws.${local.region_name}.${count.index}"
  route_table_ids = var.route_table_ids
  vpc_id          = var.vpc_id
  tags            = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-${replace(count.index, ".", "-")}" }))
}
