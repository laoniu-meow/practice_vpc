# Introduction

This repository contains a prototype of Terraform code for provisioning the necessary AWS VPC resources using a modular approach.

# Versioning

| Version | Date      | Description           |
| ------- | --------- | --------------------- |
| ~ 0.0.1 | June 2025 | First version of code |

# Prerequisites for the Prototype

1. Set up a GitHub repository to manage project version control and showcase the project to the community.
2. Preparing the Terraform code to provisioning the VPC

# File Structure Overview

- .
- ├── main.tf # Root module
- ├── variables.tf
- ├── outputs.tf
- ├── modules/
- │ └── vpc/
- │ ├── main.tf
- │ ├── variables.tf
- │ └── outputs.tf

# Steps to Create the VPC for This Prototype with explanation

For VPC Resources:

1. Execute linux command at root directory: mkdir -p modules/vpc
2. Command to create main.tf, variables.tf and output.tf files, with command: touch modules/vpc/<filename>
3. Resources in the modules/vpc/main.tf:
   - VPC (Virtual Private Cloud)
   - Each single public and private subnet with availability zones
   - Internet Gateway
   - Route Table and attached route table to public subnet
4. Define the default variables in modules/vpc/variables.tf:
   - Project / Prototype name
   - VPC CIDR Block, Public and Private CIDR Block
   - Public and Private Availability Zone
   - Internet Gateway
   - Route Table
   - Associate Route Table
5. Create Output for reviewing the result in modules/vpc/outlet.tf:

For Security Group:

1. Execute linux command at root directory: mkdir -p modules/security-group
2. Command to create main.tf, variables.tf and output.tf files, with command: touch modules/security-group/<filename>
