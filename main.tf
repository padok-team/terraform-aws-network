# Here you can reference 2 type of terraform objects :
# 1. Ressources from you provider of choice
# 2. Modules from official repositories which include modules from the following github organizations
#     - AWS: https://github.com/terraform-aws-modules
#     - GCP: https://github.com/terraform-google-modules
#     - Azure: https://github.com/Azure

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.10.0"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
