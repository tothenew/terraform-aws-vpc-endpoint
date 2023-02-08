resource "aws_security_group" "vpc_endpoint_sg" {
  count       = var.security_group_id == "" ? 1 : 0
  name        = "${local.project_name_prefix}-vpc-sg"
  description = "Security group created for VPC endpoint"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [local.cidr_block]
  }

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [local.cidr_block]
  }

  tags = merge(local.common_tags, tomap({ "Name" : "${local.project_name_prefix}-vpc-sg" }))
}
