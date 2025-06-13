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

# VPC Module
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

# Security Group Module - For Public Subnet
module "security_group" {
  source                     = "./modules/security-group"
  project_name               = var.aws_project_name
  security_group_name        = "default-sgp"
  security_group_description = "default-sgp-description"
  security_group_vpc_id      = module.vpc.vpc_id
  security_group_ingress = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow SSH access from the internet"
    }
  ]
  security_group_egress = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow all outbound traffic"
    }
  ]
}

# Security Group Module - For Private Subnet
module "security_group_private" {
  source                     = "./modules/security-group"
  project_name               = var.aws_project_name
  security_group_name        = "private-sgp"
  security_group_description = "private-sgp-description"
  security_group_vpc_id      = module.vpc.vpc_id

  security_group_ingress = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["192.168.1.0/24"]
      description = "Allow SSH access from the public subnet"
    }
  ]

  security_group_egress = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["192.168.0.0/16"]
      description = "Allow intenal VPC traffic"
    }
  ]
}
