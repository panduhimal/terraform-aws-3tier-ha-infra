terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.19.0"
    }
  }
  required_version = "~> 1.13.4"
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment = var.environment
      Project     = "3tier-webapp"
      ManagedBy   = "Terraform"
    }
  }
}
