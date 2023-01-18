terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "app_server" {
  #windows ami-0666b64fa1a48b35e
  #ubuntu ami-0039da1f3917fa8e3
  ami           = "ami-0039da1f3917fa8e3" 
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
