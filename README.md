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

- [Example of use case](examples/example_of_use_case/main.tf)
- [Example of other use case](examples/example_of_other_use_case/main.tf)

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
