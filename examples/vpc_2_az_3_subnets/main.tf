# Short description of the use case in comments

provider "aws" {
  region = "eu-west-3"
}

module "vpc_multiple_az" {
  source = "../.."

  vpc_name              = "vpc_multi_az_example"
  vpc_availability_zone = ["eu-west-3a", "eu-west-3b"]

  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = ["10.0.0.0/19", "10.0.32.0/19"]
  private_subnet_cidr = ["10.0.64.0/18", "10.0.128.0/18"]
  intra_subnet_cidr   = ["10.0.192.0/19", "10.0.224.0/19"]

  intra_dedicated_network_acl = true

  intra_inbound_acl_rules = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
    {
      rule_number = 101
      rule_action = "deny"
      from_port   = 22
      to_port     = 22
      protocol    = "22"
      cidr_block  = "0.0.0.0/0"
    },
  ]

  intra_outbound_acl_rules = [
    {
      rule_number = 100
      rule_action = "allow"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_block  = "0.0.0.0/0"
    },
  ]

  tags = {
    "Terraform" = "True"
    "Example"   = "VPC_2_az_3_subnets"
    "Module"    = "Padok AWS Network"
  }

  public_subnet_tags = {
    "Fonction" = "Bastion only"
  }

  private_subnet_tags = {
    "Fonction" = "EKS"
  }

  intra_subnet_tags = {
    "Fonction" = "Database"
  }

  intra_acl_tags = {
    "Desciption" = "Deny port 22"
  }
}
