#output "ENV" {
#  value =  var.ENV
#}

variable "VPC_CIDR" {
  default = ""
}
resource  "aws_vpc"   "main" {
  cidr_block       =  var.VPC_CIDR
  tags = {
    Name = var.ENV
  }
}

variable "ENV" {}
