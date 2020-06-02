# Terraform state

This repo together with [terraform-modules](https://github.com/dragos-sutu/terraform-modules) represent a way to achieve maintainable, immutable Terraform code.

It contains `hcl` files that target modules in `terraform-modules` repo with variables specific to each account or environment.   

## How do you deploy the infrastructure using this repo

### Pre-requisites
1. Install [Terraform](https://www.terraform.io/) 
1. Install [Terragrunt](https://github.com/gruntwork-io/terragrunt) 
1. Configure cloud provider credentials, for AWS use one of the supported [authentication mechanisms](https://www.terraform.io/docs/providers/aws/#authentication).

### Deploying a single module

1. `cd` into the module's folder (e.g. `cd aws/non-prod/us-east-1/vpc`).
1. Run `terragrunt plan` to see the changes you're about to apply.
1. If the plan looks good, run `terragrunt apply`.

### Deploying all modules in a region

1. `cd` into the region folder (e.g. `cd aws/non-prod/us-east-1`).
1. Run `terragrunt plan-all` to see all the changes you're about to apply.
1. If the plan looks good, run `terragrunt apply-all`.

## How is this repo organized

```
cloud-provider
 └ account
   └ global
   └ zone
     └ resource
```
