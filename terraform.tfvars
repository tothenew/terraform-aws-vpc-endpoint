region              = "ap-south-1"
project_name_prefix = "dev-tothenew"

common_tags = {
  "Feature" : "application"
  "Project": "ToTheNew"
  "Environment": "dev"
}

subnet_ids          = [""]
vpc_id              = ""
route_table_ids     = [""]
private_dns_enabled = true
security_group_id   = ""