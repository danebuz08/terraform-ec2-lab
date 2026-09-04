variable "aws_region" {
  description = "AWS region where resources will be created."
  type        = string
  default     = "us-east-2"
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance."
  type        = string
  default     = "terraform-ec2-lab"
}

variable "key_name" {
  description = "Existing AWS EC2 key pair name."
  type        = string
}

variable "ssh_cidr" {
  description = "CIDR allowed to SSH into the EC2 instance."
  type        = string
}
