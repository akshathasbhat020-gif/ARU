 provider "aws" {
  region = "ap-northeast-2"
  access_key = ""
  secret_key = ""
}
resource "aws_vpc" "Myvpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "Terraform-VPC"
    }
  
}