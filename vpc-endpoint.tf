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

module "cloudwatch_logs_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.logs"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-cloudwatch-logs" }))
}

module "cloudwatch_monitoring_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.monitoring"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags = merge(local.common_tags, tomap({
    "Name" : "${local.project_name_prefix}-cloudwatch-monitoring"
  }))
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

module "ecr_api_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.ecr.api"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-ecr-api" }))
}

module "ecr_dkr_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.ecr.dkr"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-ecr-dkr" }))
}

module "autoscaling_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.autoscaling"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-autoscaling" }))
}

module "elb_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.elasticloadbalancing"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-elb" }))
}

module "sns_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.sns"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-sns" }))
}

module "sqs_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.sqs"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-sqs" }))
}

module "secrets_manager_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.secretsmanager"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-secrets-manager" }))
}

module "lambda_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.lambda"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-lambda" }))
}

module "dynamodb_gateway" {
  source          = "./modules/vpc-endpoint/gateway"
  service_name    = "com.amazonaws.${local.region_name}.dynamodb"
  route_table_ids = var.route_table_ids
  vpc_id          = var.vpc_id
  tags            = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-dynamodb" }))
}

module "sts_interface" {
  source              = "./modules/vpc-endpoint/interface"
  security_group_ids  = [local.security_group_id]
  service_name        = "com.amazonaws.${local.region_name}.sts"
  subnet_ids          = var.subnet_ids
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-sts" }))
}
