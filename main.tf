terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "vm_1" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Dev"
  }

}
