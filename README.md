# Terraform EC2 Lab

This project demonstrates how to provision an AWS EC2 instance using Terraform with current infrastructure-as-code and AWS security practices.

## Project Overview

Terraform is used to provision and manage AWS infrastructure from code instead of manually creating resources in the AWS Console.

This lab provisions:

- An Ubuntu 24.04 EC2 instance
- A dedicated EC2 security group
- SSH access
- Encrypted gp3 EBS storage
- IMDSv2 enforcement
- Dynamic Ubuntu AMI discovery
- AWS resource tagging

## Architecture

```text
GitHub
   |
   v
Terraform Configuration
   |
   v
Jenkins / Terraform Master
Ubuntu 24.04
   |
   | AWS IAM Role
   v
AWS API
   |
   +---- Security Group
   |
   +---- EC2 Instance
          |
          +---- Ubuntu 24.04
          +---- Encrypted gp3 EBS
          +---- IMDSv2
