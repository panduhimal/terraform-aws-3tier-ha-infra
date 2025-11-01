variable "cidr_block" {
  description = "The CIDR block for the main VPC."
  type        = string
}

variable "instance_tenancy" {
  description = "The tenancy option for instances."
  type        = string
}
