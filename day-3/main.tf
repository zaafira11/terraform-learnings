terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# create s3 bucket
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket11-zaafi"

  tags = {
    Name        = "My bucket 3.0"
    Environment = "Dev"
  }
}