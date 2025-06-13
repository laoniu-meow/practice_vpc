# Create a VPC

resource "aws_vpc" "primary_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  tags = {
    Name = "${var.prject_name}-vpc"
  }
}

resource "aws_public_subnet" "public_subnet" {
  vpc_id     = aws_vpc.primary_vpc.id
  cidr_block = var.aws_public_subnet_cidr_block
  tags = {
    Name = "${var.prject_name}-public-subnet"
  }
}

resource "aws_private_subnet" "private_subnet" {
  vpc_id     = aws_vpc.primary_vpc.id
  cidr_block = var.aws_private_subnet_cidr_block
  tags = {
    Name = "${var.prject_name}-private-subnet"
  }
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.primary_vpc.id
  tags = {
    Name = "${var.prject_name}-internet-gateway"
  }
}

resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.primary_vpc.id
  tags = {
    Name = "${var.prject_name}-route-table"
  }
}

resource "aws_route_table_association" "route_table_association" {
  subnet_id      = aws_public_subnet.public_subnet.id
  route_table_id = aws_route_table.route_table.id
}
