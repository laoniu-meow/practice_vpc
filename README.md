# Introduction

This repository contains a prototype of Terraform code for provisioning the necessary AWS VPC resources using a modular approach.

# Versioning

| Version | Date      | Description           |
| ------- | --------- | --------------------- |
| 0.0.1   | June 2025 | First version of code |

# Prerequisites for the Prototype

1. Set up a GitHub repository to manage project version control and showcase the project to the community.
2. Preparing the Terraform code to provisioning the VPC

# File Structure Overview

.
├── main.tf # Root module
├── variables.tf
├── outputs.tf
├── modules/
│ └── vpc/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf

# Steps to Create the VPC for This Prototype

1. Execute linux command at root directory: mkdir -p modules/vpc
2. Command to create main.tf, variables.tf and output.tf files, with command: touch <filename>
