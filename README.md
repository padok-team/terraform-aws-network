# REPOSITORY ARCHIVED

This repository will no longer be maintained.

Please, use the module in the [starter](https://github.com/padok-team/terraform-aws-starter) instead.

# AWS Network Terraform module

Terraform module which creates **VPC** resources on **AWS**. This module is an abstraction of the
[AWS VPC Terraform](https://github.com/terraform-aws-modules/terraform-aws-vpc).

## User Stories for this module

- AAOps I can I can deploy an HA VPC on multiple AZ easily
- AAOps I can deploy public, private & intra subnets in my VPC
- AAOps My route tables and NACLs are preconfigured
- AAOps I can retrieve subnets & vpc ids as outputs of the module

## Schema

![Schema](docs/assets/schema.png)

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

| Name                                            | Source                        | Version |
| ----------------------------------------------- | ----------------------------- | ------- |
| <a name="module_this"></a> [this](#module_this) | terraform-aws-modules/vpc/aws | 3.10.0  |

## Inputs

| Name                                                                                                                     | Description                                                                                                                                      | Type                | Default     | Required |
| ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------- | ----------- | :------: |
| <a name="input_tags"></a> [tags](#input_tags)                                                                            | Tags for all your ressources                                                                                                                     | `map(string)`       | n/a         |   yes    |
| <a name="input_vpc_availability_zone"></a> [vpc_availability_zone](#input_vpc_availability_zone)                         | List of AZ Names or IDs in your region                                                                                                           | `list(string)`      | n/a         |   yes    |
| <a name="input_vpc_cidr"></a> [vpc_cidr](#input_vpc_cidr)                                                                | CIDR block of your VPC                                                                                                                           | `string`            | n/a         |   yes    |
| <a name="input_vpc_name"></a> [vpc_name](#input_vpc_name)                                                                | Name of your VPC                                                                                                                                 | `string`            | n/a         |   yes    |
| <a name="input_create_igw"></a> [create_igw](#input_create_igw)                                                          | Controls if an Internet Gateway is created for public subnets and the related routes that connect them.                                          | `bool`              | `true`      |    no    |
| <a name="input_enable_nat_gateway"></a> [enable_nat_gateway](#input_enable_nat_gateway)                                  | Should be true if you want to provision NAT Gateways for each of your private networks                                                           | `bool`              | `true`      |    no    |
| <a name="input_intra_acl_tags"></a> [intra_acl_tags](#input_intra_acl_tags)                                              | Additional tags for your intra acl                                                                                                               | `map(string)`       | `{}`        |    no    |
| <a name="input_intra_dedicated_network_acl"></a> [intra_dedicated_network_acl](#input_intra_dedicated_network_acl)       | Whether or not to use a dedicated network ACL (not default) and custom rules for intra subnets                                                   | `bool`              | `false`     |    no    |
| <a name="input_intra_inbound_acl_rules"></a> [intra_inbound_acl_rules](#input_intra_inbound_acl_rules)                   | Intra subnets inbound network ACLs                                                                                                               | `list(map(string))` | `[]`        |    no    |
| <a name="input_intra_outbound_acl_rules"></a> [intra_outbound_acl_rules](#input_intra_outbound_acl_rules)                | Intra subnets inbound network ACLs                                                                                                               | `list(map(string))` | `[]`        |    no    |
| <a name="input_intra_subnet_cidr"></a> [intra_subnet_cidr](#input_intra_subnet_cidr)                                     | List of intra CIDRs to deploy in your VPC                                                                                                        | `list(string)`      | `[]`        |    no    |
| <a name="input_intra_subnet_suffix"></a> [intra_subnet_suffix](#input_intra_subnet_suffix)                               | Suffix for your public subnets                                                                                                                   | `string`            | `"intra"`   |    no    |
| <a name="input_intra_subnet_tags"></a> [intra_subnet_tags](#input_intra_subnet_tags)                                     | Additional tags for your intra subnets                                                                                                           | `map(string)`       | `{}`        |    no    |
| <a name="input_map_public_ip_on_launch"></a> [map_public_ip_on_launch](#input_map_public_ip_on_launch)                   | Associate public IP to instances by default                                                                                                      | `bool`              | `false`     |    no    |
| <a name="input_private_acl_tags"></a> [private_acl_tags](#input_private_acl_tags)                                        | Additional tags for your private ACLs                                                                                                            | `map(string)`       | `{}`        |    no    |
| <a name="input_private_dedicated_network_acl"></a> [private_dedicated_network_acl](#input_private_dedicated_network_acl) | Whether or not to use a dedicated network ACL (not default) and custom rules for private subnets                                                 | `bool`              | `false`     |    no    |
| <a name="input_private_inbound_acl_rules"></a> [private_inbound_acl_rules](#input_private_inbound_acl_rules)             | Private subnets inbound network ACLs                                                                                                             | `list(map(string))` | `[]`        |    no    |
| <a name="input_private_outbound_acl_rules"></a> [private_outbound_acl_rules](#input_private_outbound_acl_rules)          | Private subnets inbound network ACLs                                                                                                             | `list(map(string))` | `[]`        |    no    |
| <a name="input_private_subnet_cidr"></a> [private_subnet_cidr](#input_private_subnet_cidr)                               | List of Private CIDRs to deploy in your VPC                                                                                                      | `list(string)`      | `[]`        |    no    |
| <a name="input_private_subnet_suffix"></a> [private_subnet_suffix](#input_private_subnet_suffix)                         | Suffix for your public subnets                                                                                                                   | `string`            | `"private"` |    no    |
| <a name="input_private_subnet_tags"></a> [private_subnet_tags](#input_private_subnet_tags)                               | Additional tags for your private subnets                                                                                                         | `map(string)`       | `{}`        |    no    |
| <a name="input_public_acl_tags"></a> [public_acl_tags](#input_public_acl_tags)                                           | Additional tags for your private acl                                                                                                             | `map(string)`       | `{}`        |    no    |
| <a name="input_public_dedicated_network_acl"></a> [public_dedicated_network_acl](#input_public_dedicated_network_acl)    | Whether or not to use a dedicated network ACL (not default) and custom rules for public subnets                                                  | `bool`              | `false`     |    no    |
| <a name="input_public_inbound_acl_rules"></a> [public_inbound_acl_rules](#input_public_inbound_acl_rules)                | Public subnets inbound network ACLs                                                                                                              | `list(map(string))` | `[]`        |    no    |
| <a name="input_public_outbound_acl_rules"></a> [public_outbound_acl_rules](#input_public_outbound_acl_rules)             | Public subnets inbound network ACLs                                                                                                              | `list(map(string))` | `[]`        |    no    |
| <a name="input_public_subnet_cidr"></a> [public_subnet_cidr](#input_public_subnet_cidr)                                  | List of public CIDRs to deploy in your VPC                                                                                                       | `list(string)`      | `[]`        |    no    |
| <a name="input_public_subnet_suffix"></a> [public_subnet_suffix](#input_public_subnet_suffix)                            | Suffix for your public subnets                                                                                                                   | `string`            | `"public"`  |    no    |
| <a name="input_public_subnet_tags"></a> [public_subnet_tags](#input_public_subnet_tags)                                  | Additional tags for your public subnets                                                                                                          | `map(string)`       | `{}`        |    no    |
| <a name="input_single_nat_gateway"></a> [single_nat_gateway](#input_single_nat_gateway)                                  | Should be true if you want to provision a single shared NAT Gateway across all of your private networks. Set to false for production environment | `bool`              | `true`      |    no    |
| <a name="input_vpc_tags"></a> [vpc_tags](#input_vpc_tags)                                                                | Additional Tags for your VPC                                                                                                                     | `map(string)`       | `{}`        |    no    |

## Outputs

| Name                                                                                         | Description                      |
| -------------------------------------------------------------------------------------------- | -------------------------------- |
| <a name="output_intra_subnets_ids"></a> [intra_subnets_ids](#output_intra_subnets_ids)       | List of IDs of intra subnets     |
| <a name="output_nat_gateway_ips"></a> [nat_gateway_ips](#output_nat_gateway_ips)             | List of Nat Gateway External IPs |
| <a name="output_private_subnets_ids"></a> [private_subnets_ids](#output_private_subnets_ids) | List of IDs of private subnets   |
| <a name="output_public_subnets_ids"></a> [public_subnets_ids](#output_public_subnets_ids)    | List of IDs of public subnets    |
| <a name="output_vpc_id"></a> [vpc_id](#output_vpc_id)                                        | The ID of the VPC                |

<!-- END_TF_DOCS -->

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

```text
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

  https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
```
