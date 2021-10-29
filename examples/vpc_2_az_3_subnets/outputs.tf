# VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc_multiple_az.vpc_id
}

# Subnets ID
output "public_subnets_id" {
  description = "List of IDs of public subnets"
  value       = module.vpc_multiple_az.public_subnets_id
}

output "private_subnets_id" {
  description = "List of IDs of private subnets"
  value       = module.vpc_multiple_az.private_subnets_id
}

output "intra_subnets_id" {
  description = "List of IDs of intra subnets"
  value       = module.vpc_multiple_az.intra_subnets_id
}
