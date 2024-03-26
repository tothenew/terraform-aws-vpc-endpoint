variable "project_name_prefix" {
  type        = string
  description = "A string value to describe prefix of all the resources"
  default     = "dev-project"
}

variable "common_tags" {
  type        = map(string)
  description = "A map to add common tags to all the resources"
  default = {
    "Environment" : "dev"
    "Project" : "project"
    "Feature" : "application"
  }
}

variable "vpc_id" {
  type        = string
  description = "A string value for VPC ID"
}

variable "route_table_ids" {
  type        = list(string)
  description = "A list of string value for Route table IDs"
}

variable "subnet_ids" {
  type        = list(string)
  description = "A list of string value for Subnet IDs"
}

variable "private_dns_enabled" {
  type        = bool
  description = "Allow private DNS enabled for the New VPC endpoint"
  default     = true
}

variable "security_group_id" {
  type        = string
  description = "Security Group ID for VPC Endpoint, if not define module will create automatically"
  default     = ""
}

# "logs", "monitoring", "autoscaling", "ecr.api", "ecr.dkr", "elasticloadbalancing", "sns", "sqs", "secretsmanager", "lambda", "sts"
variable "add_interface" {
  type        = list(string)
  description = "Adding new Interface endpoints"
  default     = []
}

# "dynamodb"
variable "add_gateway" {
  type        = list(string)
  description = "Adding new Gateway endpoints"
  default     = []
}
