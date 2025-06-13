# Output the VPC ID
output "vpc_id" {
  value = aws_vpc.primary_vpc.id
}
