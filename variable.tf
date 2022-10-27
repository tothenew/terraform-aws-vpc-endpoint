variable "project_name_prefix" {
    type        = string
    description = "A string value to describe prefix of all the resources"
}

variable "region" {
    type        = string
}

variable "environment" {
    type	= string
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

variable "route_table_ids" {
    type        = list(string)
    description = "A list of string value for Route table IDs"
}

variable "subnet_ids" {
    type        = list(string)
    description = "A list of string value for Subnet IDs"
}

variable "sg_description" {
    type        = string
    description = "A list of string value for Route table IDs"
}

variable "from_port" {
    type        = number
    description = "A list of string value for Route table IDs"
}

variable "to_port" {
    type        = number
    description = "A list of string value for Route table IDs"
}

variable "protocol" {
    type        = string
    description = "A list of string value for Route table IDs"
}

variable "common_tags" {
    type        = map(string)
    description = "A map to add common tags to all the resources"
}


