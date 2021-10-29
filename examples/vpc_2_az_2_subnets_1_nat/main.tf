# Create a simple VPC on 1 Availability zone with 2 subnets 

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
  source = "../.."

  vpc_name = "Simple_VPC"
  tags = {
    "Scope"      = "Global Tag",
    "Terraform"  = "True",
    "ModuleName" = "simple_vpc",
    "Example"    = "vpc_2_az_2_subnets_1_nat"
  }

  public_subnet_tags = {
    "Scope" = "Public Subnet Tag"
  }

  vpc_availability_zone = ["eu-west-3a", "eu-west-3b"]

  vpc_cidr            = "172.16.0.0/24"
  public_subnet_cidr  = ["172.16.0.0/25"]
  private_subnet_cidr = ["172.16.0.128/26", "172.16.0.192/26"]
  intra_subnet_cidr   = []
}
