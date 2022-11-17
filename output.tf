output "ssm_interface_id" {
  value = module.ssm_interface.vpc_endpoint_id
}
output "ssm_interface_arn" {
  value = module.ssm_interface.vpc_endpoint_arn
}

output "ssm_messages_interface_id" {
  value = module.ssm_messages_interface.vpc_endpoint_id
}
output "ssm_messages_interface_arn" {
  value = module.ssm_messages_interface.vpc_endpoint_arn
}

output "ec2_messages_interface_id" {
  value = module.ec2_messages_interface.vpc_endpoint_id
}
output "ec2_messages_interface_arn" {
  value = module.ec2_messages_interface.vpc_endpoint_arn
}

output "s3_gateway_id" {
  value = module.s3_gateway.vpc_endpoint_id
}
output "s3_gateway_arn" {
  value = module.s3_gateway.vpc_endpoint_arn
}

output "cloudwatch_logs_interface_id" {
  value = module.cloudwatch_logs_interface.vpc_endpoint_id
}
output "cloudwatch_logs_interface_arn" {
  value = module.cloudwatch_logs_interface.vpc_endpoint_arn
}

output "cloudwatch_monitoring_interface_id" {
  value = module.cloudwatch_monitoring_interface.vpc_endpoint_id
}
output "cloudwatch_monitoring_interface_arn" {
  value = module.cloudwatch_monitoring_interface.vpc_endpoint_arn
}

output "ec2_interface_id" {
  value = module.ec2_interface.vpc_endpoint_id
}
output "ec2_interface_arn" {
  value = module.ec2_interface.vpc_endpoint_arn
}

output "ecr_api_interface_id" {
  value = module.ecr_api_interface.vpc_endpoint_id
}
output "ecr_api_interface_arn" {
  value = module.ecr_api_interface.vpc_endpoint_arn
}

output "ecr_dkr_interface_id" {
  value = module.ecr_dkr_interface.vpc_endpoint_id
}
output "ecr_dkr_interface_arn" {
  value = module.ecr_dkr_interface.vpc_endpoint_arn
}

output "autoscaling_interface_id" {
  value = module.autoscaling_interface.vpc_endpoint_id
}
output "autoscaling_interface_arn" {
  value = module.autoscaling_interface.vpc_endpoint_arn
}

output "elb_interface_id" {
  value = module.elb_interface.vpc_endpoint_id
}
output "elb_interface_arn" {
  value = module.elb_interface.vpc_endpoint_arn
}

output "sns_interface_id" {
  value = module.sns_interface.vpc_endpoint_id
}
output "sns_interface_arn" {
  value = module.sns_interface.vpc_endpoint_arn
}

output "sqs_interface_id" {
  value = module.sqs_interface.vpc_endpoint_id
}
output "sqs_interface_arn" {
  value = module.sqs_interface.vpc_endpoint_arn
}

output "secrets_manager_interface_id" {
  value = module.secrets_manager_interface.vpc_endpoint_id
}
output "secrets_manager_interface_arn" {
  value = module.secrets_manager_interface.vpc_endpoint_arn
}

output "lambda_interface_id" {
  value = module.lambda_interface.vpc_endpoint_id
}
output "lambda_interface_arn" {
  value = module.lambda_interface.vpc_endpoint_arn
}

output "dynamodb_gateway_id" {
  value = module.dynamodb_gateway.vpc_endpoint_id
}
output "dynamodb_gateway_arn" {
  value = module.dynamodb_gateway.vpc_endpoint_arn
}

output "sts_interface_id" {
    value = module.sts_interface.vpc_endpoint_id
}
output "sts_interface_arn" {
    value = module.sts_interface.vpc_endpoint_arn
}
