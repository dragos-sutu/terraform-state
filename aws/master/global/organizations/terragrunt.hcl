include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::git@github.com:dragos-sutu/terraform-modules.git//aws/organizations?ref=master"
}

inputs = {
  account_identity = {
    email               = ""
    name                = "identity"
    organizational_unit = "SRE"
  }

  account_non_prod = {
    email               = ""
    name                = "non-prod"
    organizational_unit = "Developers"
  }
}
