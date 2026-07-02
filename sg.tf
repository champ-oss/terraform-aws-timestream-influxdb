resource "aws_security_group" "this" {
  count       = var.enabled ? 1 : 0
  name_prefix = "${var.git}-influxdb-"
  vpc_id      = var.vpc_id
  tags        = merge(local.tags, var.tags)

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_vpc_security_group_ingress_rule" "this" {
  for_each = var.enabled ? toset(var.ingress_security_group_ids) : []

  security_group_id            = aws_security_group.this[0].id
  referenced_security_group_id = each.value

  ip_protocol = "tcp"
  from_port   = 8086
  to_port     = 8086
}

resource "aws_vpc_security_group_egress_rule" "this" {
  count = var.enabled ? 1 : 0

  security_group_id = aws_security_group.this[0].id

  ip_protocol = "-1"
  cidr_ipv4   = "0.0.0.0/0"
}
