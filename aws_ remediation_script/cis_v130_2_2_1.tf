terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.2.0"
}
provider "aws" {
  region  = "region"
  access_key = "access_key"
  secret_key = "secret_key"
}

resource "aws_ebs_encryption_by_default" "example" {
  enabled = true
}