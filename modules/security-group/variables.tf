# Define variables for the security group
variable "project_name" {
  type        = string
  description = "The name of the project"
  default     = "default-project"
}

variable "security_group_name" {
  type        = string
  description = "The name of the security group"
  default     = "default-security-group"
}

variable "security_group_tags" {
  type        = map(string)
  description = "The tags for the security group"
  default     = {}
}

variable "security_group_description" {
  type        = string
  description = "The description of the security group"
  default     = "default-security-group-description"
}

variable "security_group_vpc_id" {
  type        = string
  description = "The VPC ID of the security group"
  default     = "default-vpc-id"
}

variable "security_group_ingress" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "The ingress rules for the security group"
  default     = []
}

variable "security_group_egress" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "The egress rules for the security group"
  default     = []
}
