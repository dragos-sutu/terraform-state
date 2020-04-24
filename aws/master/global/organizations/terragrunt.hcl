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

  account_dev = {
    email               = ""
    name                = "dev"
    organizational_unit = "Developers"
  }
}
