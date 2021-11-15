resource  "aws_vpc"   "main" {
  count      = length(var.SUBNETS)
  cidr_block       =  element(var.SUBNETS,count.index )
  tags = {
    Name ="subnet.${count.index}"
      }
}




#resource "aws_vpc_ipv4_cidr_block_association" "addon" {
#  count      = length(var.VPC_CIDR_ADDON)
#  vpc_id     = aws_vpc.main.id
#  cidr_block = element(var.VPC_CIDR_ADDON, count.index)
#}