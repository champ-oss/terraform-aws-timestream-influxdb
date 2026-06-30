variable "private_subnet_ids" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group#subnet_ids"
  type        = list(string)
}

variable "vpc_id" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group#vpc_id"
  type        = string
}

variable "enabled" {
  description = "Enable or disable the resource creation"
  type        = bool
  default     = true
}

variable "git" {
  description = "The name of the database instance"
  type        = string
  default     = "terraform-aws-timestream-influxdb"
}

variable "username" {
  description = "The username for the database instance"
  type        = string
  default     = "admin"
}

variable "db_instance_type" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/timestreaminfluxdb_db_instance#db_instance_type-1"
  type        = string
  default     = "db.influx.medium"
}

variable "allocated_storage" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/timestreaminfluxdb_db_instance#allocated_storage-1"
  type        = number
  default     = 20
}

variable "deployment_type" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/timestreaminfluxdb_db_instance#deployment_type-1"
  type        = string
  default     = "Single_AZ"
}

variable "tags" {
  description = "Additional tags to apply to the resources"
  type        = map(string)
  default     = {}
}

variable "ingress_security_group_ids" {
  description = "List of security group IDs to allow ingress from"
  type        = list(string)
  default     = []
}

variable "publicly_accessible" {
  description = "Whether the database instance is publicly accessible"
  type        = bool
  default     = false
}

variable "organization_name" {
  description = "The name of the organization for the database instance"
  type        = string
  default     = "org_name"
}

variable "bucket" {
  description = "The name of the bucket for the database instance"
  type        = string
  default     = "metrics"
}

