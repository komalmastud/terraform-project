Terraform EC2 Project

This project demonstrates how to launch an EC2 instance using Terraform on AWS.

Prerequisites

AWS account

IAM user with programmatic access

EC2 key pair

Terraform installed

AWS CLI installed and configured

Steps Performed

Created IAM User:

Added to a group called terraform-group

Generated Access Key and Secret Access Key

Launched EC2 Instance:

Amazon Linux 2023

Instance type: t2.micro

Connected to EC2:

Updated system using sudo yum update

Installed AWS CLI and Terraform

Configured AWS CLI:

Used aws configure and entered access keys, region (us-east-1), and JSON output format

Created Terraform Project:

Made a directory called project

Inside, created main.tf with the following code:
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-00a929b66ed6e0de6"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0d1651d9c60727c36"

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}

Terraform Commands:

terraform init to initialize

terraform plan to preview

terraform apply to create resources

terraform destroy to delete everything

Pushed Project to GitHub:

Created a remote repo

Used access token for authentication
