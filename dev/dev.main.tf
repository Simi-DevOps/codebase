resource "aws_instance" "ec2_AmazonLinux" {

  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name

  security_groups   = [aws_security_group.ec2_sg.id]
  availability_zone = "eu-west-1b"
  user_data         = <<EOF
#!/bin/bash
yum install java-1.8.0-amazon-corretto-devel.x86_64 maven git -y
EOF
  tags              = var.default_tags
}
