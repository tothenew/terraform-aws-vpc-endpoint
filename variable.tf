variable "project_name_prefix" {
    type        = string
    default     = "tothenew"
    description = "A string value to describe prefix of all the resources"
}

variable "region" {
    type        = string
    description = "A string value for Launch resources in which AWS Region"
    default     = "ap-south-1"
}

variable "environment" {
    type	= string
    description = "A string value for tag as Environment Name"
    default	= "dev"
}

variable "project" {
    type        = string
    default     = "tothenew"
    description = "A string value for tag as Project Name"
}

variable "profile" {
    type        = string
    default     = "tothenew"
    description = "A string value for tag as Project Name"
}

variable "vpc_id" {
    type        = string
    default     = ""
    description = "A string value for VPC ID"
}

variable "route_table_ids" {
    type        = list(string)
    default     = [""]
    description = "A list of string value for Route table IDs"
}

variable "subnet_ids" {
    type        = list(string)
    default     = [""]
    description = "A list of string value for Subnet IDs"
}

variable "sg_description" {
    type        = string
    default     = "This security group belongs to VPC Endpoint"
    description = "A list of string value for Route table IDs"
}

variable "from_port" {
    type        = number
    default     = 443
    description = "A list of string value for Route table IDs"
}

variable "to_port" {
    type        = number
    default     = 443
    description = "A list of string value for Route table IDs"
}

variable "protocol" {
    type        = string
    default     = "tcp"
    description = "A list of string value for Route table IDs"
}

variable "common_tags" {
    type        = map(string)
    description = "A map to add common tags to all the resources"
}


