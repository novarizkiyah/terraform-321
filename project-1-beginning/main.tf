terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
    bucket = "my-new-bucket-using-terraform"
    tags = {
        Name        = "My first Terraform bucket"
        Environment = "Dev"
    }
}