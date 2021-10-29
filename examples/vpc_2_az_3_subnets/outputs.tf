# VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc_multiple_az.vpc_id
}

# Subnets ID
output "public_subnets_ids" {
  description = "List of IDs of public subnets"
  value       = module.vpc_multiple_az.public_subnets_ids
}

output "private_subnets_ids" {
  description = "List of IDs of private subnets"
  value       = module.vpc_multiple_az.private_subnets_ids
}

output "intra_subnets_ids" {
  description = "List of IDs of intra subnets"
  value       = module.vpc_multiple_az.intra_subnets_ids
}

output "nat_gateway_ips" {
  description = "List of Nat Gateway External IP"
  value       = module.vpc_multiple_az.nat_gateway_ips
}
