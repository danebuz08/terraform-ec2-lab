output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.lab.id
}

output "public_ip" {
  description = "Public IPv4 address of the EC2 instance"
  value       = aws_instance.lab.public_ip
}

output "private_ip" {
  description = "Private IPv4 address of the EC2 instance"
  value       = aws_instance.lab.private_ip
}

output "ami_id" {
  description = "Ubuntu AMI selected by Terraform"
  value       = data.aws_ami.ubuntu.id
}
