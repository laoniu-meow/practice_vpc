# Define variables for the VPC module

variable "prject_name" {
  type        = string
  description = "The name of the VPC"
  default     = "default"
}

variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
  default     = "192.168.0.0/16"
}

variable "aws_public_subnet_cidr_block" {
  type        = string
  description = "The CIDR block for the subnet"
  default     = "192.168.1.0/16"
}

variable "aws_private_subnet_cidr_block" {
  type        = string
  description = "The CIDR block for the subnet"
  default     = "192.168.2.0/16"
}

variable "aws_interne_gateway" {
  type        = bool
  description = "The name of the internet gateway"
  default     = "default"
}

variable "aws_route_table" {
  type        = bool
  description = "The name of the route table"
  default     = "default"
}

variable "aws_route_table_association" {
  type        = bool
  description = "The name of the route table association"
  default     = "default"
}
