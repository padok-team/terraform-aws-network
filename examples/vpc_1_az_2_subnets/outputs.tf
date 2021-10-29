# VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.simple_vpc.vpc_id
}

# Subnets
output "public_subnets_ids" {
  description = "List of IDs of public subnets"
  value       = module.simple_vpc.public_subnets_ids
}

output "private_subnets_ids" {
  description = "List of IDs of private subnets"
  value       = module.simple_vpc.private_subnets_ids
}

output "nat_gateway_ips" {
  description = "List of Nat Gateway External IP"
  value       = module.simple_vpc.nat_gateway_ips
}
