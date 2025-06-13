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

variable "public_subnet_cidr_block" {
  type        = string
  description = "The CIDR block for the subnet"
  default     = "192.168.1.0/24"
}

variable "private_subnet_cidr_block" {
  type        = string
  description = "The CIDR block for the subnet"
  default     = "192.168.2.0/24"
}

variable "public_subnet_az" {
  type        = list(string)
  description = "The availability zone for the subnet"
  default     = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}

variable "private_subnet_az" {
  type        = list(string)
  description = "The availability zone for the subnet"
  default     = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}

variable "internet_gateway" {
  type        = bool
  description = "The name of the internet gateway"
  default     = true
}

variable "route_table" {
  type        = bool
  description = "The name of the route table"
  default     = true
}

variable "route_table_association" {
  type        = bool
  description = "The name of the route table association"
  default     = true
}
