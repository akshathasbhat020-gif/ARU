provider "aws" {
    region = "ap-northeast-2"
}

resource "aws_instance" "akshatha" {
    ami = "ami-0ecfdfd1c8ae01aec"
    instance_type = "t3.micro"
}