resource "aws_security_group" "vpc_endpoint_sg" {
    name        = var.sg_name
    description = var.sg_description
    vpc_id      = var.vpc_id

    ingress {
        from_port   = var.from_port
        to_port     = var.to_port
        protocol    = var.protocol
        cidr_blocks = var.vpc_id
    }

    egress {
        from_port   = var.from_port
        to_port     = var.to_port
        protocol    = var.protocol
        cidr_blocks = var.vpc_id
    }

    tags = var.tags
}
