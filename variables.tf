variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}
variable "region" {
  description = "The AWS Region to deploy resources."
  type        = string
  default     = "us-east-1"
}

variable "cidr_block" {
  description = "The CIDR block for the main VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_tenancy" {
  description = "The tenancy option for instances."
  type        = string
  default     = "default"
}

variable "subnets" {
  description = "Map of subnet configuration."
  type = map(object({
    cidr_block        = string
    availability_zone = string
    type              = string
  }))
  default = {
    public-1 = {
      cidr_block        = "10.0.1.0/24"
      availability_zone = "us-east-1a"
      type              = "public"
    }
    public-2 = {
      cidr_block        = "10.0.2.0/24"
      availability_zone = "us-east-1b"
      type              = "public"
    }
    app-1 = {
      cidr_block        = "10.0.3.0/24"
      availability_zone = "us-east-1a"
      type              = "app"
    }
    app-2 = {
      cidr_block        = "10.0.4.0/24"
      availability_zone = "us-east-1b"
      type              = "app"
    }
    db-1 = {
      cidr_block        = "10.0.5.0/24"
      availability_zone = "us-east-1a"
      type              = "db"
    }
    db-2 = {
      cidr_block        = "10.0.6.0/24"
      availability_zone = "us-east-1b"
      type              = "db"
    }
  }
}
