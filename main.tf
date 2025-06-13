# Version for Terraform
terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
  }
}

# Provider for AWS
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

module "vpc" {
  source                    = "./modules/vpc"
  vpc_cidr_block            = "192.168.0.0/16"
  prject_name               = var.aws_project_name
  public_subnet_cidr_block  = "192.168.1.0/24"
  private_subnet_cidr_block = "192.168.2.0/24"
  internet_gateway          = true
  route_table               = true
  route_table_association   = true
}
