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



