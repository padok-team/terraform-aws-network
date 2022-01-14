# VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.this.vpc_id
}

# Subnets ID
output "public_subnets_ids" {
  description = "List of IDs of public subnets"
  value       = module.this.public_subnets
}

output "private_subnets_ids" {
  description = "List of IDs of private subnets"
  value       = module.this.private_subnets
}

output "intra_subnets_ids" {
  description = "List of IDs of intra subnets"
  value       = module.this.intra_subnets
}

output "nat_gateway_ips" {
  description = "List of Nat Gateway External IPs"
  value       = module.this.nat_public_ips
}
