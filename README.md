# AWS Network Terraform module

Terraform module which creates **VPC** resources on **AWS**. This module is an abstraction of the [AWS VPC Terraform](https://github.com/terraform-aws-modules/terraform-aws-vpc).

## User Stories for this module

- AAVPC I can spawn on one or multiple AZ
- AAOps I can deploy 3 types of subnets in my VPC
- AAOps I can retrieve subnets & vpc ids as outputs of the module

## Usage

```hcl
module "simple_vpc" {
  source = "https://github.com/padok-team/terraform-aws-network"

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

- [Example of VPC on 1 AZ with 2 subnets](examples/vpc_1_az_2_subnets/main.tf)
- [Example of VPC on 2 az, 3 subnets by az and simple NACLs](examples/vpc_2_az_3_subnets/main.tf)

<!-- BEGIN_TF_DOCS -->
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | 3.10.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_intra_subnet_cidr"></a> [intra\_subnet\_cidr](#input\_intra\_subnet\_cidr) | List of intra CIDR to deploy in your VPC | `list(string)` | n/a | yes |
| <a name="input_private_subnet_cidr"></a> [private\_subnet\_cidr](#input\_private\_subnet\_cidr) | List of Private CIDR to deploy in your VPC | `list(string)` | n/a | yes |
| <a name="input_public_subnet_cidr"></a> [public\_subnet\_cidr](#input\_public\_subnet\_cidr) | List of public CIDR to deploy in your VPC | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for all your ressources | `map(string)` | n/a | yes |
| <a name="input_vpc_availability_zone"></a> [vpc\_availability\_zone](#input\_vpc\_availability\_zone) | List of AZ Names or ID in your region | `list(string)` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR block of your VPC | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of your VPC | `string` | n/a | yes |
| <a name="input_intra_acl_tags"></a> [intra\_acl\_tags](#input\_intra\_acl\_tags) | Additional Tags for your intra acl | `map(string)` | `{}` | no |
| <a name="input_intra_dedicated_network_acl"></a> [intra\_dedicated\_network\_acl](#input\_intra\_dedicated\_network\_acl) | Whether to use dedicated network ACL (not default) and custom rules for intra subnets | `bool` | `false` | no |
| <a name="input_intra_inbound_acl_rules"></a> [intra\_inbound\_acl\_rules](#input\_intra\_inbound\_acl\_rules) | Intra subnets inbound network ACLs | `list(map(string))` | `[]` | no |
| <a name="input_intra_outbound_acl_rules"></a> [intra\_outbound\_acl\_rules](#input\_intra\_outbound\_acl\_rules) | Intra subnets inbound network ACLs | `list(map(string))` | `[]` | no |
| <a name="input_intra_subnet_suffix"></a> [intra\_subnet\_suffix](#input\_intra\_subnet\_suffix) | Suffix for your public subnets | `string` | `"intra"` | no |
| <a name="input_intra_subnet_tags"></a> [intra\_subnet\_tags](#input\_intra\_subnet\_tags) | Additional Tags for your intra subnets | `map(string)` | `{}` | no |
| <a name="input_map_public_ip_on_launch"></a> [map\_public\_ip\_on\_launch](#input\_map\_public\_ip\_on\_launch) | Associate public IP to instances by default | `bool` | `false` | no |
| <a name="input_private_acl_tags"></a> [private\_acl\_tags](#input\_private\_acl\_tags) | Additional Tags for your private acl | `map(string)` | `{}` | no |
| <a name="input_private_dedicated_network_acl"></a> [private\_dedicated\_network\_acl](#input\_private\_dedicated\_network\_acl) | Whether to use dedicated network ACL (not default) and custom rules for private subnets | `bool` | `false` | no |
| <a name="input_private_inbound_acl_rules"></a> [private\_inbound\_acl\_rules](#input\_private\_inbound\_acl\_rules) | Private subnets inbound network ACLs | `list(map(string))` | `[]` | no |
| <a name="input_private_outbound_acl_rules"></a> [private\_outbound\_acl\_rules](#input\_private\_outbound\_acl\_rules) | Private subnets inbound network ACLs | `list(map(string))` | `[]` | no |
| <a name="input_private_subnet_suffix"></a> [private\_subnet\_suffix](#input\_private\_subnet\_suffix) | Suffix for your public subnets | `string` | `"private"` | no |
| <a name="input_private_subnet_tags"></a> [private\_subnet\_tags](#input\_private\_subnet\_tags) | Additional Tags for your private subnets | `map(string)` | `{}` | no |
| <a name="input_public_acl_tags"></a> [public\_acl\_tags](#input\_public\_acl\_tags) | Additional Tags for your private acl | `map(string)` | `{}` | no |
| <a name="input_public_dedicated_network_acl"></a> [public\_dedicated\_network\_acl](#input\_public\_dedicated\_network\_acl) | Whether to use dedicated network ACL (not default) and custom rules for public subnets | `bool` | `false` | no |
| <a name="input_public_inbound_acl_rules"></a> [public\_inbound\_acl\_rules](#input\_public\_inbound\_acl\_rules) | Public subnets inbound network ACLs | `list(map(string))` | `[]` | no |
| <a name="input_public_outbound_acl_rules"></a> [public\_outbound\_acl\_rules](#input\_public\_outbound\_acl\_rules) | Public subnets inbound network ACLs | `list(map(string))` | `[]` | no |
| <a name="input_public_subnet_suffix"></a> [public\_subnet\_suffix](#input\_public\_subnet\_suffix) | Suffix for your public subnets | `string` | `"public"` | no |
| <a name="input_public_subnet_tags"></a> [public\_subnet\_tags](#input\_public\_subnet\_tags) | Additional Tags for your public subnets | `map(string)` | `{}` | no |
| <a name="input_vpc_tags"></a> [vpc\_tags](#input\_vpc\_tags) | Additional Tags for your VPC | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_intra_subnets_id"></a> [intra\_subnets\_id](#output\_intra\_subnets\_id) | List of IDs of intra subnets |
| <a name="output_private_subnets_id"></a> [private\_subnets\_id](#output\_private\_subnets\_id) | List of IDs of private subnets |
| <a name="output_public_subnets_id"></a> [public\_subnets\_id](#output\_public\_subnets\_id) | List of IDs of public subnets |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
<!-- END_TF_DOCS -->
