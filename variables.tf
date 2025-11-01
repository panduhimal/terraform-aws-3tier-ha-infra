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
