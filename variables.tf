# Variables at main directory

variable "aws_region" {
  type        = string
  description = "The AWS region to deploy the infrastructure"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "The AWS profile to use for the infrastructure"
  default     = "default"
}

variable "aws_project_name" {
  type        = string
  description = "The AWS project name to use for the infrastructure"
  default     = "default"
}
