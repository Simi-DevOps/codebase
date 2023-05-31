variable "ec2_ami" {
  description = "This is a variable to manage ec2 AMI type"
  type        = string
  default     = "ami-04f7efe62f419d9f5"
}

variable "ec2_key_name" {
  description = "This is a variable to manage ec2 key name"
  type        = string
  default     = "Thirdkey"
}

variable "ec2_instance_type" {
  description = "This is a variable to manage ec2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "default_tags" {
  description = "This is a variable to manage ec2 tags"
  type        = map(any)
  default = {
    "Name" = "Dev Application node"
    "Dept" = "development"
    "Can destroy" = "Yes"
  }
}