# VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# Subnets ID
output "public_subnets_ids" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "private_subnets_ids" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "intra_subnets_ids" {
  description = "List of IDs of intra subnets"
  value       = module.vpc.intra_subnets
}

output "nat_gateway_ips" {
  description = "List of Nat Gateway External IPs"
  value       = module.vpc.nat_public_ips
}
