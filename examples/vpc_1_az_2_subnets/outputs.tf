# VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.simple_vpc.vpc_id
}

# Subnets
output "private_subnets_ids" {
  description = "List of IDs of private subnets"
  value       = module.simple_vpc.private_subnets_id
}

output "public_subnets_ids" {
  description = "List of IDs of public subnets"
  value       = module.simple_vpc.public_subnets_id
}
