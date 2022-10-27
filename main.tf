module "ssm_interface" {
    source              = "./modules/vpc-endpoint/interface"
    security_group_ids  = [var.security_group_id]
    service_name        = "com.amazonaws.${var.region}.ssm"
    subnet_ids          = var.subnet_ids
    vpc_id              = var.vpc_id
    private_dns_enabled = var.private_dns_enabled
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-ssm" }))
}

module "ssm_messages_interface" {
    source              = "./modules/vpc-endpoint/interface"
    security_group_ids  = [var.security_group_id]
    service_name        = "com.amazonaws.${var.region}.ssmmessages"
    subnet_ids          = var.subnet_ids
    vpc_id              = var.vpc_id
    private_dns_enabled = var.private_dns_enabled
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-ssm-messages" }))
}

module "ec2_messages_interface" {
    source              = "./modules/vpc-endpoint/interface"
    security_group_ids  = [var.security_group_id]
    service_name        = "com.amazonaws.${var.region}.ec2messages"
    subnet_ids          = var.subnet_ids
    vpc_id              = var.vpc_id
    private_dns_enabled = var.private_dns_enabled
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-ec2-messages" }))
}

module "s3_gateway" {
    source              = "./modules/vpc-endpoint/gateway"
    service_name        = "com.amazonaws.${var.region}.s3"
    route_table_ids     = var.route_table_ids
    vpc_id              = var.vpc_id
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-s3" }))
}

module "cloudwatch_logs_interface" {
    source              = "./modules/vpc-endpoint/interface"
    security_group_ids  = [var.security_group_id]
    service_name        = "com.amazonaws.${var.region}.logs"
    subnet_ids          = var.subnet_ids
    vpc_id              = var.vpc_id
    private_dns_enabled = var.private_dns_enabled
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-cloudwatch-logs" }))
}

module "cloudwatch_monitoring_interface" {
    source              = "./modules/vpc-endpoint/interface"
    security_group_ids  = [var.security_group_id]
    service_name        = "com.amazonaws.${var.region}.monitoring"
    subnet_ids          = var.subnet_ids
    vpc_id              = var.vpc_id
    private_dns_enabled = var.private_dns_enabled
    tags                = merge(local.common_tags, tomap({
        "Name" : "${local.project_name_prefix}-cloudwatch-monitoring"
    }))
}

module "ec2_interface" {
    source              = "./modules/vpc-endpoint/interface"
    security_group_ids  = [var.security_group_id]
    service_name        = "com.amazonaws.${var.region}.ec2"
    subnet_ids          = var.subnet_ids
    vpc_id              = var.vpc_id
    private_dns_enabled = var.private_dns_enabled
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-ec2" }))
}

module "ecr_api_interface" {
    source              = "./modules/vpc-endpoint/interface"
    security_group_ids  = [var.security_group_id]
    service_name        = "com.amazonaws.${var.region}.ecr.api"
    subnet_ids          = var.subnet_ids
    vpc_id              = var.vpc_id
    private_dns_enabled = var.private_dns_enabled
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-ecr-api" }))
}

module "ecr_dkr_interface" {
    source              = "./modules/vpc-endpoint/interface"
    security_group_ids  = [var.security_group_id]
    service_name        = "com.amazonaws.${var.region}.ecr.dkr"
    subnet_ids          = var.subnet_ids
    vpc_id              = var.vpc_id
    private_dns_enabled = var.private_dns_enabled
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-ecr-dkr" }))
}

module "autoscaling_interface" {
    source              = "./modules/vpc-endpoint/interface"
    security_group_ids  = [var.security_group_id]
    service_name        = "com.amazonaws.${var.region}.autoscaling"
    subnet_ids          = var.subnet_ids
    vpc_id              = var.vpc_id
    private_dns_enabled = var.private_dns_enabled
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-autoscaling" }))
}

module "elb_interface" {
    source              = "./modules/vpc-endpoint/interface"
    security_group_ids  = [var.security_group_id]
    service_name        = "com.amazonaws.${var.region}.elasticloadbalancing"
    subnet_ids          = var.subnet_ids
    vpc_id              = var.vpc_id
    private_dns_enabled = var.private_dns_enabled
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-elb" }))
}

module "sns_interface" {
    source              = "./modules/vpc-endpoint/interface"
    security_group_ids  = [var.security_group_id]
    service_name        = "com.amazonaws.${var.region}.sns"
    subnet_ids          = var.subnet_ids
    vpc_id              = var.vpc_id
    private_dns_enabled = var.private_dns_enabled
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-sns" }))
}

module "sqs_interface" {
    source              = "./modules/vpc-endpoint/interface"
    security_group_ids  = [var.security_group_id]
    service_name        = "com.amazonaws.${var.region}.sqs"
    subnet_ids          = var.subnet_ids
    vpc_id              = var.vpc_id
    private_dns_enabled = var.private_dns_enabled
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-sqs" }))
}

module "secrets_manager_interface" {
    source              = "./modules/vpc-endpoint/interface"
    security_group_ids  = [var.security_group_id]
    service_name        = "com.amazonaws.${var.region}.secretsmanager"
    subnet_ids          = var.subnet_ids
    vpc_id              = var.vpc_id
    private_dns_enabled = var.private_dns_enabled
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-secrets-manager" }))
}

module "lambda_interface" {
    source              = "./modules/vpc-endpoint/interface"
    security_group_ids  = [var.security_group_id]
    service_name        = "com.amazonaws.${var.region}.lambda"
    subnet_ids          = var.subnet_ids
    vpc_id              = var.vpc_id
    private_dns_enabled = var.private_dns_enabled
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-lambda" }))
}

module "dynamodb_gateway" {
    source              = "./modules/vpc-endpoint/gateway"
    service_name        = "com.amazonaws.${var.region}.dynamodb"
    route_table_ids     = var.route_table_ids
    vpc_id              = var.vpc_id
    tags                = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-dynamodb" }))
}
