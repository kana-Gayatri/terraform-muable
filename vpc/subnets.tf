variable "SUBNETS" {

}
resource "aws_subnet" "subnets" {
count             = length(var.SUBNETS)
vpc_id            = aws_vpc.main.id
#  vpc_id            = aws_vpc.main[count.index]
cidr_block        = element(var.SUBNETS, count.index)
tags = {
  Name = "subnet-${count.index}"
}
}
