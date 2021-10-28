# VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.simple_vpc.vpc_id
}

# Subnets
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.simple_vpc.private_subnets
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.simple_vpc.public_subnets
}

# output "intra_subnets" {
#   description = "List of IDs of intra subnets"
#   value       = module.simple_vpc.intra_subnets
# }


