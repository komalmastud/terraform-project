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

