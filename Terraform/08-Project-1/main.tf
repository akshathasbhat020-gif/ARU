# provider 
provider "aws" {
  region = "ap-northeast-2"
}

# VPC Ceration
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "vpc_Terraform"
  }
}

# Subnet Creation_1
resource "aws_subnet" "subnet_1" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-2"
  map_public_ip_on_launch = true
  tags = {
    Name = "Subnet_Terraform"
  }
}

# Subnet Creation_2
resource "aws_subnet" "subnet_2" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-northeast-1"
  map_public_ip_on_launch = true
  tags = {
    Name = "Subnet_Terraform"
  }
}

# Route Table Creation
resource "aws_route_table" "Public_route_table" {
    vpc_id = aws_vpc.my_vpc.id
    tags = {
        Name = "Public_Route_Table_Terraform"
    } 
}

# Internet Gateway Creation
resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    Name = "IGW_Terraform"
  }
}

# Route Creation
resource "aws_route" "Public_route" {
    route_table_id = aws_route_table.Public_route.id
    destination_cidr_block = " 0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
} 

# Route Table Association
resource "aws_route_table_association" "Public_route_table_association_" {
    subnet_id = aws_subnet.subnet_1.id
    route_table_id = aws_route_table.Public_route_table.id
}