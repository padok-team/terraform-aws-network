# AWS Network Terraform module

Terraform module which creates **Network** resources on **AWS**. This module is an abstraction of the [AWS VPC Terraform](https://github.com/terraform-aws-modules/terraform-aws-vpc).

## User Stories for this module

- AATYPE I can be highly available or single zone
- ...

## Usage

```hcl
module "example" {
  source = "https://github.com/padok-team/terraform-aws-example"

  example_of_required_variable = "hello_world"
}
```

## Examples

- [Example of VPC on 1 AZ with 2 subnets](examples/vpc_1_az_2_subnets/main.tf)
- [Example of VPC on 2 az, 3 subnets by az and simple NACLs](examples/vpc_2_az_3_subnets/main.tf)

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
