# Create a simple VPC on 1 Availability zone with 2 subnets
locals {
  region = "eu-west-3"
  env    = "dev"
}

provider "aws" {
  region = local.region

  default_tags {
    tags = {
      Env         = local.env
      ManagedByTF = true
    }
  }
}

module "simple_vpc" {
  source = "git@github.com:padok-team/terraform-aws-network.git"

  vpc_name = "Simple_VPC"
  tags = {
    "Scope"      = "Global Tag",
    "Terraform"  = "True",
    "ModuleName" = "simple_vpc",
    "Example"    = "vpc_1_az_2_subnets"
  }

  public_subnet_tags = {
    "Scope" = "Public Subnet Tag"
  }

  vpc_availability_zone = ["eu-west-3a"]

  vpc_cidr            = "172.16.0.0/24"
  private_subnet_cidr = ["172.16.0.0/25"]
  public_subnet_cidr  = ["172.16.0.128/25"]
  intra_subnet_cidr   = []
}
