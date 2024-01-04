terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "web105" {
  ami           = "ami-0a0f1259dd1c90938"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld_bhavana"
  }
}
