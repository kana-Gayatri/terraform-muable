terraform {
  backend "s3" {
    bucket = "services3bucket"
    key    = "terraform-mutable/db/dev/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}


#terraform {
#  backend "s3" {
#    bucket = "mybucket"
#    key    = "path/to/my/key"
#    region = "us-east-1"
#  }
#}