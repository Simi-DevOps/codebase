output "ec2_public_ip" {
  value = aws_instance.ec2_AmazonLinux.public_ip

}

output "aws_vpc" {
  value = aws_vpc.Task5_vpc.id
}

output "subnet_pub1" {
  value = aws_subnet.pub1.id
}

output "subnet_pub2" {
  value = aws_subnet.pub2.id
}