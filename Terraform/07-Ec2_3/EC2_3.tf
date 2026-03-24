provider "aws" {
    region = "ap-northeast-2"
}

resource "aws_instance" "ec2" {
    ami = "ami-084a56dceed3eb9bb"
    instance_type = "m7i-flex.large"
    security_groups = ["default"]
    root_block_device {
      volume_size = 30
      volume_type = "gp3"
      delete_on_termination = true
    }

    key_name = "MVP"

    user_data = file("jenkins_server.sh")

    tags = {
        Name = "Admin_Server"
    }
  
}

output "publicIP" {
    value = aws_instance.ec2.public_ip
}   