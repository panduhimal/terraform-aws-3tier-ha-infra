module "vpc" {
  source = "./modules/network"

  cidr_block       = var.cidr_block
  instance_tenancy = var.instance_tenancy

  subnets = var.subnets
}
