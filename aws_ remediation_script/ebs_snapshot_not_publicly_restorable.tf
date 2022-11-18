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

data "aws_ebs_snapshot" "ebs_volume" {
  most_recent = true
  owners      = ["self"]
  restorable_by_user_ids = [ ]
}
