# VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# Subnets ID
output "public_subnets_id" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "private_subnets_id" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "intra_subnets_id" {
  description = "List of IDs of intra subnets"
  value       = module.vpc.intra_subnets
}
