# Outputs for VPC resources
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_name" {
  description = "The name of the VPC"
  value       = module.vpc.vpc_name
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.vpc.public_subnet_id
}

output "public_subnet_name" {
  description = "The name of the public subnet"
  value       = module.vpc.public_subnet_name
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = module.vpc.private_subnet_id
}

output "private_subnet_name" {
  description = "The name of the private subnet"
  value       = module.vpc.private_subnet_name
}

output "internet_gateway_id" {
  description = "The ID of the internet gateway"
  value       = module.vpc.internet_gateway_id
}

output "route_table_id" {
  description = "The ID of the route table"
  value       = module.vpc.route_table_id
}

# Outputs for Security Group resources
output "security_group_id" {
  description = "The ID of the security group"
  value       = module.security_group.security_group_id
}

output "security_group_name" {
  description = "The name of the security group"
  value       = module.security_group.security_group_name
}

output "security_group_arn" {
  description = "The ARN of the security group"
  value       = module.security_group.security_group_arn
}

output "security_group_vpc_id" {
  description = "The VPC ID of the security group"
  value       = module.security_group.security_group_vpc_id
}

output "security_group_ingress_rules" {
  description = "The ingress rules of the security group"
  value       = module.security_group.security_group_ingress_rules
}

output "security_group_egress_rules" {
  description = "The egress rules of the security group"
  value       = module.security_group.security_group_egress_rules
}
