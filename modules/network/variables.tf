variable "cidr_block" {
  description = "The CIDR block for the main VPC."
  type        = string
}

variable "instance_tenancy" {
  description = "The tenancy option for instances."
  type        = string
}

variable "subnets" {
  description = "Map of subnet configuration."
  type = map(object({
    cidr_block        = string
    availability_zone = string
    type              = string
  }))
}
