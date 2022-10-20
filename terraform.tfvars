region               = "ap-south-1"
profile              = "tothenew"
project_name_prefix = "tothenew"

common_tags = {
    "Feature" : "application"
}

project = "ToTheNew"
environment = "dev"
subnet_ids = [""]
vpc_id = ""
route_table_ids = [""]
from_port = 443
to_port = 443
protocol = "tcp"

