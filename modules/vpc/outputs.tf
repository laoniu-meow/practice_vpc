# Create output for reviewing the result - VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.primary_vpc.id
}

output "vpc_name" {
  description = "The name of the VPC"
  value       = aws_vpc.primary_vpc.tags.Name
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.public_subnet.id
}

output "public_subnet_name" {
  description = "The name of the public subnet"
  value       = aws_subnet.public_subnet.tags.Name
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = aws_subnet.private_subnet.id
}

output "private_subnet_name" {
  description = "The name of the private subnet"
  value       = aws_subnet.private_subnet.tags.Name
}

output "internet_gateway_id" {
  description = "The ID of the internet gateway"
  value       = aws_internet_gateway.internet_gateway.id
}

output "route_table_id" {
  description = "The ID of the route table"
  value       = aws_route_table.route_table.id
}
