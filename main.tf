locals {
  tags = {
    git       = var.git
    cost      = "shared"
    creator   = "terraform"
    component = "timestream-influxdb"
  }
}

resource "random_password" "this" {
  count = var.enabled ? 1 : 0

  length           = 32
  special          = false
  upper            = true
  lower            = true
  numeric          = true
}
