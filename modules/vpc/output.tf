# Output the VPC ID
output "vpc_id" {
  value = aws_vpc.primary_vpc.id
}

output "vpc_name" {
  value = aws_vpc.primary_vpc.tags.Name
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "public_subnet_name" {
  value = aws_subnet.public_subnet.tags.Name
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}

output "private_subnet_name" {
  value = aws_subnet.private_subnet.tags.Name
}

output "internet_gateway_id" {
  value = aws_internet_gateway.internet_gateway.id
}

output "route_table_id" {
  value = aws_route_table.route_table.id
}
