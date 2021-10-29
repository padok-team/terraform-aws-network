module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.10.0"

  create_vpc = true

  ## VPC
  name = var.vpc_name
  cidr = var.vpc_cidr

  ## Subnets CIDR
  azs             = var.vpc_availability_zone
  private_subnets = var.private_subnet_cidr
  public_subnets  = var.public_subnet_cidr
  intra_subnets   = var.intra_subnet_cidr

  ## Subnet suffix
  public_subnet_suffix  = var.public_subnet_suffix
  private_subnet_suffix = var.private_subnet_suffix
  intra_subnet_suffix   = var.intra_subnet_suffix

  ## Gateway
  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway
  enable_vpn_gateway = false
  create_igw         = true

  ## Disable AWS default resources
  manage_default_route_table    = false
  manage_default_vpc            = false
  manage_default_network_acl    = false
  manage_default_security_group = false

  ## Enable Public IP and NACLs - disable by default
  map_public_ip_on_launch       = var.map_public_ip_on_launch
  public_dedicated_network_acl  = var.public_dedicated_network_acl
  private_dedicated_network_acl = var.private_dedicated_network_acl
  intra_dedicated_network_acl   = var.intra_dedicated_network_acl

  ## Define NACLs
  # Used only if public_dedicated_network_acl is true
  public_inbound_acl_rules  = var.public_inbound_acl_rules
  public_outbound_acl_rules = var.public_outbound_acl_rules

  # Used only if private_dedicated_network_acl is true
  private_inbound_acl_rules  = var.private_inbound_acl_rules
  private_outbound_acl_rules = var.private_outbound_acl_rules

  # used only if intra_dedicated_network_acl is true
  intra_inbound_acl_rules  = var.intra_inbound_acl_rules
  intra_outbound_acl_rules = var.intra_outbound_acl_rules

  ## Tagging
  tags                = var.tags
  vpc_tags            = var.vpc_tags
  public_subnet_tags  = var.public_subnet_tags
  private_subnet_tags = var.private_subnet_tags
  intra_subnet_tags   = var.intra_subnet_tags

  private_acl_tags = var.private_acl_tags
  public_acl_tags  = var.public_acl_tags
  intra_acl_tags   = var.intra_acl_tags

  # Flow Logs disabled in v1.0.0
  # Might add this feature in future version(s)
}
