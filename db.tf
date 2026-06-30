resource "aws_timestreaminfluxdb_db_instance" "this" {
  count                  = var.enabled ? 1 : 0
  name                   = var.git
  organization           = var.organization
  bucket                 = var.bucket
  username               = var.username
  password               = random_password.this[0].result
  db_instance_type       = var.db_instance_type
  allocated_storage      = var.allocated_storage
  deployment_type        = var.deployment_type
  publicly_accessible    = var.publicly_accessible
  vpc_subnet_ids         = var.vpc_subnet_ids
  vpc_security_group_ids = [aws_security_group.this[0].id]

  tags = merge(local.tags, var.tags)
}