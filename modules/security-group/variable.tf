variable "vpc_id" {}
variable "sg_description" {
	type = string
	description = "A string to add description to the security group"
}
variable "sg_name" {
	type = string
	description = "A string to add name to security group"
}
variable "from_port" {
	type = number
	description = "To provide from which port traffic is to be allowed"
}

variable "to_port" {
	type = number
	description = "To provide to which port traffic is to be sent" 
}

variable "protocol" { 
	type = string
	description = "A string to define which protocol to allow in security group"
}

variable "tags" { 
	type = map(string)
	description = "A map of tags to add to all resources"
}
