terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "us-east-1"

}

resource "aws_instance" "app_server" {
  ami           = "ami-02457590d33d576c3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}