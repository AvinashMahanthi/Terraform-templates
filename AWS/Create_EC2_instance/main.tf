terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  for_each = {
    prod = "t2.micro"
    QA = "t3.micro"
  } 
  ami                     = var.ami
  instance_type           = each.value
  tags = {
    Name = "Instance-${each.key}"
  }

}

output "Instance_details" {
  value = aws_instance.web[*]
}