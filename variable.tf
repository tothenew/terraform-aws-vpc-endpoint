variable "project_name_prefix" {
  type        = string
  description = "A string value to describe prefix of all the resources"
}

variable "region" {
  type = string
}

variable "environment" {
  type = string
}

variable "project" {
  type        = string
  description = "A string value for tag as Project Name"
}

variable "profile" {
  type        = string
  description = "A string value for tag as Project Name"
}

variable "vpc_id" {
  type        = string
  description = "A string value for VPC ID"
}

variable "cidr_block" {
  type        = string
  description = "IPV4 range for VPC Creation"
}

variable "route_table_ids" {
  type        = list(string)
  description = "A list of string value for Route table IDs"
}

variable "subnet_ids" {
  type        = list(string)
  description = "A list of string value for Subnet IDs"
}

variable "common_tags" {
  type        = map(string)
  description = "A map to add common tags to all the resources"
}

variable "private_dns_enabled" {
  type = bool
}

variable "security_group_id" {
  type = string
}
