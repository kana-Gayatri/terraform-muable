#resource "aws_route_table" "route" {
#  vpc_id = aws_vpc.main.id
#  tags = {
#    Name = "example"
#  }
#vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
#resource "aws_route" "r" {
#  route_table_id            = aws_route_table.route.id
#  destination_cidr_block    = var.DEFAULT_VPC_CIDR
#  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
#}
#}


