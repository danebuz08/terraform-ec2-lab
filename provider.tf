provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      ManagedBy   = "Terraform"
      Environment = "Lab"
      Project     = "terraform-ec2-lab"
    }
  }
}
