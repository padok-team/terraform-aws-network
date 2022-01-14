# AWS Network Terraform module

Terraform module which creates **VPC** resources on **AWS**. This module is an abstraction of the
[AWS VPC Terraform](https://github.com/terraform-aws-modules/terraform-aws-vpc).

## User Stories for this module

- AAOps I can I can deploy an HA VPC on multiple AZ easily
- AAOps I can deploy public, private & intra subnets in my VPC
- AAOps My route tables and NACLs are preconfigured
- AAOps I can retrieve subnets & vpc ids as outputs of the module

## Schema

![Schema](img/schema.png)

## Usage

```hcl
module "simple_vpc" {
  source = "git@github.com:padok-team/terraform-aws-network.git"

  vpc_name = "Simple_VPC"
  tags = {
    "Scope"      = "Global Tag",
    "Terraform"  = "True",
    "ModuleName" = "simple_vpc"
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
```

## Examples

- [Example of VPC on 2 AZ with 2 private subnets and 1 NAT](examples/vpc_2_az_2_subnets_1_nat/main.tf)
- [Example of VPC on 2 az, 3 subnets by az and simple NACLs](examples/vpc_2_az_3_subnets/main.tf)

<!-- BEGIN_TF_DOCS -->
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_this"></a> [this](#module\_this) | terraform-aws-modules/vpc/aws | 3.10.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for all your ressources | `map(string)` | n/a | yes |
| <a name="input_vpc_availability_zone"></a> [vpc\_availability\_zone](#input\_vpc\_availability\_zone) | List of AZ Names or ID in your region | `list(string)` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR block of your VPC | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of your VPC | `string` | n/a | yes |
| <a name="input_create_igw"></a> [create\_igw](#input\_create\_igw) | Controls if an Internet Gateway is created for public subnets and the related routes that connect them. | `bool` | `true` | no |
| <a name="input_enable_nat_gateway"></a> [enable\_nat\_gateway](#input\_enable\_nat\_gateway) | Should be true if you want to provision NAT Gateways for each of your private networks | `bool` | `true` | no |
| <a name="input_intra_acl_tags"></a> [intra\_acl\_tags](#input\_intra\_acl\_tags) | Additional Tags for your intra acl | `map(string)` | `{}` | no |
| <a name="input_intra_dedicated_network_acl"></a> [intra\_dedicated\_network\_acl](#input\_intra\_dedicated\_network\_acl) | Whether to use dedicated network ACL (not default) and custom rules for intra subnets | `bool` | `false` | no |
| <a name="input_intra_inbound_acl_rules"></a> [intra\_inbound\_acl\_rules](#input\_intra\_inbound\_acl\_rules) | Intra subnets inbound network ACLs | `list(map(string))` | `[]` | no |
| <a name="input_intra_outbound_acl_rules"></a> [intra\_outbound\_acl\_rules](#input\_intra\_outbound\_acl\_rules) | Intra subnets inbound network ACLs | `list(map(string))` | `[]` | no |
| <a name="input_intra_subnet_cidr"></a> [intra\_subnet\_cidr](#input\_intra\_subnet\_cidr) | List of intra CIDR to deploy in your VPC | `list(string)` | `[]` | no |
| <a name="input_intra_subnet_suffix"></a> [intra\_subnet\_suffix](#input\_intra\_subnet\_suffix) | Suffix for your public subnets | `string` | `"intra"` | no |
| <a name="input_intra_subnet_tags"></a> [intra\_subnet\_tags](#input\_intra\_subnet\_tags) | Additional Tags for your intra subnets | `map(string)` | `{}` | no |
| <a name="input_map_public_ip_on_launch"></a> [map\_public\_ip\_on\_launch](#input\_map\_public\_ip\_on\_launch) | Associate public IP to instances by default | `bool` | `false` | no |
| <a name="input_private_acl_tags"></a> [private\_acl\_tags](#input\_private\_acl\_tags) | Additional Tags for your private acl | `map(string)` | `{}` | no |
| <a name="input_private_dedicated_network_acl"></a> [private\_dedicated\_network\_acl](#input\_private\_dedicated\_network\_acl) | Whether to use dedicated network ACL (not default) and custom rules for private subnets | `bool` | `false` | no |
| <a name="input_private_inbound_acl_rules"></a> [private\_inbound\_acl\_rules](#input\_private\_inbound\_acl\_rules) | Private subnets inbound network ACLs | `list(map(string))` | `[]` | no |
| <a name="input_private_outbound_acl_rules"></a> [private\_outbound\_acl\_rules](#input\_private\_outbound\_acl\_rules) | Private subnets inbound network ACLs | `list(map(string))` | `[]` | no |
| <a name="input_private_subnet_cidr"></a> [private\_subnet\_cidr](#input\_private\_subnet\_cidr) | List of Private CIDR to deploy in your VPC | `list(string)` | `[]` | no |
| <a name="input_private_subnet_suffix"></a> [private\_subnet\_suffix](#input\_private\_subnet\_suffix) | Suffix for your public subnets | `string` | `"private"` | no |
| <a name="input_private_subnet_tags"></a> [private\_subnet\_tags](#input\_private\_subnet\_tags) | Additional Tags for your private subnets | `map(string)` | `{}` | no |
| <a name="input_public_acl_tags"></a> [public\_acl\_tags](#input\_public\_acl\_tags) | Additional Tags for your private acl | `map(string)` | `{}` | no |
| <a name="input_public_dedicated_network_acl"></a> [public\_dedicated\_network\_acl](#input\_public\_dedicated\_network\_acl) | Whether to use dedicated network ACL (not default) and custom rules for public subnets | `bool` | `false` | no |
| <a name="input_public_inbound_acl_rules"></a> [public\_inbound\_acl\_rules](#input\_public\_inbound\_acl\_rules) | Public subnets inbound network ACLs | `list(map(string))` | `[]` | no |
| <a name="input_public_outbound_acl_rules"></a> [public\_outbound\_acl\_rules](#input\_public\_outbound\_acl\_rules) | Public subnets inbound network ACLs | `list(map(string))` | `[]` | no |
| <a name="input_public_subnet_cidr"></a> [public\_subnet\_cidr](#input\_public\_subnet\_cidr) | List of public CIDR to deploy in your VPC | `list(string)` | `[]` | no |
| <a name="input_public_subnet_suffix"></a> [public\_subnet\_suffix](#input\_public\_subnet\_suffix) | Suffix for your public subnets | `string` | `"public"` | no |
| <a name="input_public_subnet_tags"></a> [public\_subnet\_tags](#input\_public\_subnet\_tags) | Additional Tags for your public subnets | `map(string)` | `{}` | no |
| <a name="input_single_nat_gateway"></a> [single\_nat\_gateway](#input\_single\_nat\_gateway) | Should be true if you want to provision a single shared NAT Gateway across all of your private networks. Set to false for production environment | `bool` | `true` | no |
| <a name="input_vpc_tags"></a> [vpc\_tags](#input\_vpc\_tags) | Additional Tags for your VPC | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_intra_subnets_ids"></a> [intra\_subnets\_ids](#output\_intra\_subnets\_ids) | List of IDs of intra subnets |
| <a name="output_nat_gateway_ips"></a> [nat\_gateway\_ips](#output\_nat\_gateway\_ips) | List of Nat Gateway External IP |
| <a name="output_private_subnets_ids"></a> [private\_subnets\_ids](#output\_private\_subnets\_ids) | List of IDs of private subnets |
| <a name="output_public_subnets_ids"></a> [public\_subnets\_ids](#output\_public\_subnets\_ids) | List of IDs of public subnets |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
<!-- END_TF_DOCS -->
