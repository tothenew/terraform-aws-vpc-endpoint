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
output "ec2_interface_id" {
  value = module.ec2_interface.vpc_endpoint_id
}
output "ec2_interface_arn" {
  value = module.ec2_interface.vpc_endpoint_arn
}
