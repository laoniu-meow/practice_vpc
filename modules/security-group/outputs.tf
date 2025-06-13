# Create output for reviewing the result - Security Group

output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.security_group.id
}

output "security_group_name" {
  description = "The name of the security group"
  value       = aws_security_group.security_group.name
}

output "security_group_arn" {
  description = "The ARN of the security group"
  value       = aws_security_group.security_group.arn
}

output "security_group_vpc_id" {
  description = "The VPC ID of the security group"
  value       = aws_security_group.security_group.vpc_id
}

output "security_group_ingress_rules" {
  description = "The ingress rules of the security group"
  value       = aws_security_group_rule.security_group_ingress
}

output "security_group_egress_rules" {
  description = "The egress rules of the security group"
  value       = aws_security_group_rule.security_group_egress
}
