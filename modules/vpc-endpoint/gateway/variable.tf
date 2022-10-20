variable "vpc_id" {}

variable "service_name" {
}

variable "security_group_ids" {
	type = list(string)
	description = "A list of Security group IDs"
}
variable "route_table_ids" {
	type = list(string)
	description = "A list of Route Table IDs"
}
variable "tags" {
	type = map(string)
	description = "A map of tags to add to all resources"
}
variable "private_dns_enabled" {
	type 	    = bool
	description = "A boolean flag to enable/disable private DNS for VPC Epoint Interface"
}
