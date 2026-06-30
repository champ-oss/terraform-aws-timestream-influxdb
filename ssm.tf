resource "aws_ssm_parameter" "password" {
  count       = var.enabled ? 1 : 0
  name        = "/${var.git}/influx/password"
  description = "Password for ${var.git} timestream influxdb instance"
  type        = "SecureString"
  value       = random_password.this[0].result
  tags        = merge(local.tags, var.tags)
}