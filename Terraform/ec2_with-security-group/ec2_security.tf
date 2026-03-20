provider "aws" {
    region = "ap-northeast-2"
}

resource "aws_security_group" "terraform" {
    name = "Terraform"
# Inbound rules
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    
    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
# Outbound rules
    egress {
            from_port = 0
            to_port = 0
            protocol = "-1"
            cidr_blocks = ["0.0.0.0/0"]
        }
        tags = {
            Name = "Terraform-Security-Group"
        }
    }

resource "aws_instance" "arun" {
    ami = "ami-0ecfdfd1c8ae01aec"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.terraform.id]
    tags = {
       Name = "Ec2"
    }
}