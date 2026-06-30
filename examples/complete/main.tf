data "aws_vpcs" "this" {
  tags = {
    purpose = "vega"
  }
}

data "aws_subnets" "this" {
  tags = {
    purpose = "vega"
    Type    = "Public"
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpcs.this.ids[0]]
  }
}

module "this" {
  source             = "../../"
  private_subnet_ids = data.aws_subnets.this.ids
  vpc_id             = data.aws_vpcs.this.ids[0]
  publicly_accessible = true
}