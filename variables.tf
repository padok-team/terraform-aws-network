# Global VPC variables
variable "vpc_name" {
  description = "Name of your VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block of your VPC"
  type        = string
}

variable "vpc_availability_zone" {
  description = "List of AZ Names or ID in your region"
  type        = list(string)
}

variable "map_public_ip_on_launch" {
  description = "Associate public IP to instances by default"
  type        = bool
  default     = false
}

variable "enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks. Set to false for production environment"
  type        = bool
  default     = true
}

variable "create_igw" {
  description = "Controls if an Internet Gateway is created for public subnets and the related routes that connect them."
  type        = bool
  default     = true
}

# Global tags
variable "tags" {
  description = "Tags for all your ressources"
  type        = map(string)
}

variable "vpc_tags" {
  description = "Additional Tags for your VPC"
  type        = map(string)
  default     = {}
}

# Public subnets information
variable "public_subnet_cidr" {
  description = "List of public CIDR to deploy in your VPC"
  type        = list(string)
  default     = []
}

variable "public_subnet_suffix" {
  description = "Suffix for your public subnets"
  type        = string
  default     = "public"
}

variable "public_dedicated_network_acl" {
  description = "Whether to use dedicated network ACL (not default) and custom rules for public subnets"
  type        = bool
  default     = false
}

variable "public_inbound_acl_rules" {
  description = "Public subnets inbound network ACLs"
  type        = list(map(string))
  default     = []
}

variable "public_outbound_acl_rules" {
  description = "Public subnets inbound network ACLs"
  type        = list(map(string))
  default     = []
}

variable "public_subnet_tags" {
  description = "Additional Tags for your public subnets"
  type        = map(string)
  default     = {}
}

variable "public_acl_tags" {
  description = "Additional Tags for your private acl"
  type        = map(string)
  default     = {}
}

# Private subnets information
variable "private_subnet_cidr" {
  description = "List of Private CIDR to deploy in your VPC"
  type        = list(string)
  default     = []
}

variable "private_subnet_suffix" {
  description = "Suffix for your public subnets"
  type        = string
  default     = "private"
}

variable "private_dedicated_network_acl" {
  description = "Whether to use dedicated network ACL (not default) and custom rules for private subnets"
  type        = bool
  default     = false
}

variable "private_inbound_acl_rules" {
  description = "Private subnets inbound network ACLs"
  type        = list(map(string))
  default     = []
}

variable "private_outbound_acl_rules" {
  description = "Private subnets inbound network ACLs"
  type        = list(map(string))
  default     = []
}

variable "private_subnet_tags" {
  description = "Additional Tags for your private subnets"
  type        = map(string)
  default     = {}
}

variable "private_acl_tags" {
  description = "Additional Tags for your private acl"
  type        = map(string)
  default     = {}
}

# Intra subnets information
variable "intra_subnet_cidr" {
  description = "List of intra CIDR to deploy in your VPC"
  type        = list(string)
  default     = []
}

variable "intra_subnet_suffix" {
  description = "Suffix for your public subnets"
  type        = string
  default     = "intra"
}

variable "intra_dedicated_network_acl" {
  description = "Whether to use dedicated network ACL (not default) and custom rules for intra subnets"
  type        = bool
  default     = false
}

variable "intra_inbound_acl_rules" {
  description = "Intra subnets inbound network ACLs"
  type        = list(map(string))
  default     = []
}

variable "intra_outbound_acl_rules" {
  description = "Intra subnets inbound network ACLs"
  type        = list(map(string))
  default     = []
}

variable "intra_subnet_tags" {
  description = "Additional Tags for your intra subnets"
  type        = map(string)
  default     = {}
}

variable "intra_acl_tags" {
  description = "Additional Tags for your intra acl"
  type        = map(string)
  default     = {}
}
