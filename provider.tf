terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.user_region
  access_key = "AKIA555PFY4ZIMEBAPVT"
  secret_key = "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"
}