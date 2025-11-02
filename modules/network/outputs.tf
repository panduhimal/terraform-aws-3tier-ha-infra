output "vpc_id" {
  description = "The ID of the main VPC."
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "List of Public Subnet ID."
  value       = [for k, v in aws_subnet.this : v.id if var.subnets[k].type == "public"]
}

output "app_subnet_ids" {
  description = "List of Private App Subnet ID."
  value       = [for k, v in aws_subnet.this : v.id if var.subnets[k].type == "app"]

}

output "db_subnet_ids" {
  description = "List of Private Data Subnet ID."
  value       = [for k, v in aws_subnet.this : v.id if var.subnets[k].type == "db"]
}

output "igw_id" {
  description = "The ID of the Internet Gateway."
  value       = aws_internet_gateway.igw.id
}

output "public_rt_id" {
  description = "The ID of the public route table."
  value       = aws_route_table.public_rt.id
}



