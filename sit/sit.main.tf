resource "aws_instance" "pub_2" {

  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name

  security_groups   = [aws_security_group.allow_tls.name]
  availability_zone = "eu-west-1b"
  user_data         = <<EOF
#!/bin/bash
yum install java-1.8.0-amazon-corretto-devel.x86_64 maven git -y
EOF
  tags              = var.default_tags

  resource "aws_subnet" "pub_2" {
  vpc_id     = aws_vpc.Task5_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Public Subnet 2"
  }
}
}


resource "aws_instance" "pub_1" {

  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = var.ec2_key_name

  security_groups   = [aws_security_group.allow_tls.name]
  availability_zone = "eu-west-1a"
  user_data         = <<EOF
#!/bin/bash
yum install java-1.8.0-amazon-corretto-devel.x86_64 maven git -y
EOF
  tags              = var.default_tags

  resource "aws_subnet" "pub_1" {
  vpc_id     = aws_vpc.Task5_vpc.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Public Subnet 1"
  }
}
}

resource "aws_vpc" "Task5_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Task 5 VPC"
  }
}