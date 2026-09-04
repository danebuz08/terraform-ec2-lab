resource "aws_security_group" "sonarqube_existing" {
  name        = "launch-wizard-7"
  description = "launch-wizard-7 created 2026-07-31T07:21:40.943Z"
  vpc_id      = "vpc-0f49a2c726d9a42e0"

  ingress {
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "sonarqube_existing" {
  ami           = "ami-0e5497a77ef21b5ac"
  instance_type = "m7i-flex.large"
  key_name      = "Ubuntu1"

  subnet_id              = "subnet-02e892ca2cd2dc645"
  vpc_security_group_ids = [aws_security_group.sonarqube_existing.id]

  root_block_device {
    volume_size           = 30
    volume_type           = "gp3"
    encrypted             = false
    iops                  = 3000
    throughput            = 125
    delete_on_termination = true
  }

  tags = {
    Name = "SonarQube"
  }

  lifecycle {
    prevent_destroy = true
  }
}
