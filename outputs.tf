output "vpc_id" {
  description = "The ID of the VPC."
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs created by the network module."
  value       = module.vpc.public_subnet_ids
}

output "app_subnet_ids" {
  description = "Private app subnet IDs created by the network module."
  value       = module.vpc.app_subnet_ids
}

output "db_subnet_ids" {
  description = "Private database subnet IDs created by the network module."
  value       = module.vpc.db_subnet_ids
}
