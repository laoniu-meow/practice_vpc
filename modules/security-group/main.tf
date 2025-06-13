# Create a security group

resource "aws_security_group" "security_group" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = var.security_group_vpc_id

  tags = merge(var.security_group_tags, {
    Name = "${var.project_name}-${var.security_group_name}"
  })
}

resource "aws_security_group_rule" "security_group_ingress" {
  for_each = { for idx, rule in var.security_group_ingress : idx => rule }

  type              = "ingress"
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  cidr_blocks       = each.value.cidr_blocks
  security_group_id = aws_security_group.security_group.id

  description = lookup(each.value, "description", "ingress rule")
}

resource "aws_security_group_rule" "security_group_egress" {
  for_each = { for idx, rule in var.security_group_egress : idx => rule }

  type              = "egress"
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  cidr_blocks       = each.value.cidr_blocks
  security_group_id = aws_security_group.security_group.id

  description = lookup(each.value, "description", "egress rule")
}
