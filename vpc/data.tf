data "aws_route_tables" "default-vpc-routes" {
  vpc_id = var.DEFAULT_VPC_ID
}

output "DEFAULT_VPC_ID" {
  value = var.DEFAULT_VPC_ID
}