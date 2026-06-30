output "password_ssm_parameter_name" {
  description = "SSM parameter containing the admin password."
  value       = var.enabled ? aws_ssm_parameter.password[0].name : ""
}

output "security_group_id" {
  description = "Security group ID."
  value       = var.enabled ? aws_security_group.this[0].id : ""
}

output "endpoint" {
  description = "InfluxDB endpoint."
  value       = var.enabled ? aws_timestreaminfluxdb_db_instance.this[0].endpoint : ""
}

output "port" {
  description = "InfluxDB port."
  value       = var.enabled ? aws_timestreaminfluxdb_db_instance.this[0].port : ""
}

output "username" {
  description = "Administrator username."
  value       = var.enabled ? aws_timestreaminfluxdb_db_instance.this[0].username : ""
}


