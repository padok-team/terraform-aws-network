variable "vpc_name" {
  type        = string
  description = "Name of your VPC"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block of your VPC"
}

variable "vpc_availability_zone" {
  type        = list(string)
  description = "List of AZ Names or ID in your region"
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "Associate public IP to instances by default"
  default     = false
}

# Tags 
variable "tags" {
  type        = map(string)
  description = "Tags for all your ressources"
}

variable "vpc_tags" {
  type        = map(string)
  description = "Additional Tags for your VPC"
  default     = {}
}


# Public subnets Information
variable "public_subnet_cidr" {
  type        = list(string)
  description = "List of public CIDR to deploy in your VPC"
}

variable "public_subnet_suffix" {
  type        = string
  description = "Suffix for your public subnets"
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
  type        = map(string)
  description = "Additional Tags for your public subnets"
  default     = {}
}


variable "public_acl_tags" {
  type        = map(string)
  description = "Additional Tags for your private acl"
  default     = {}
}

# Private Subnets Information
variable "private_subnet_cidr" {
  type        = list(string)
  description = "List of Private CIDR to deploy in your VPC"
}

variable "private_subnet_suffix" {
  type        = string
  description = "Suffix for your public subnets"
  default     = "public"
}

variable "private_subnet_tags" {
  type        = map(string)
  description = "Additional Tags for your private subnets"
  default     = {}
}



variable "private_dedicated_network_acl" {
  description = "Whether to use dedicated network ACL (not default) and custom rules for private subnets"
  type        = bool
  default     = false
}

variable "private_acl_tags" {
  type        = map(string)
  description = "Additional Tags for your private acl"
  default     = {}
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

# Intra subnets Information
variable "intra_subnet_cidr" {
  type        = list(string)
  description = "List of intra CIDR to deploy in your VPC"
}

variable "intra_subnet_suffix" {
  type        = string
  description = "Suffix for your public subnets"
  default     = "public"
}

variable "intra_subnet_tags" {
  type        = map(string)
  description = "Additional Tags for your intra subnets"
  default     = {}
}


variable "intra_acl_tags" {
  type        = map(string)
  description = "Additional Tags for your intra acl"
  default     = {}
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
