# Replace with your actual VPC ID
vpc_id = "vpc-08fb3f17042680b75"

# Specify the service name for the VPC Endpoint. For S3 in the ap-south-1 region:
service_name = "com.amazonaws.us-east-2.s3"

# List of Route Table IDs to associate with the VPC Endpoint
route_table_ids = [
  "rtb-0d43d85b8db81ba49"  # Replace with your actual Route Table ID(s)
]

# Tags to assign to the VPC Endpoint
tags = {
  Name        = "s3-vpc-endpoint"
  Environment = "Production"
  Project     = "BSuite"
}
