terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.74.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "app_server" {
  ami           = "ami-03753afda9b8ba740"

  instance_type = "t2.micro"

  tags = {
    Name = "Testing Instance Creation"
  }
}


