include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::git@github.com:dragos-sutu/terraform-modules.git//aws/organizations?ref=master"
}

inputs = {
  accounts = [
    {
      email               = get_env("AWS_ORG_IDENTITY_EMAIL", "")
      name                = "sso"
      organizational_unit = "Identity"
    },
    {
      email               = get_env("AWS_ORG_NONPROD_EMAIL", "")
      name                = "non-prod"
      organizational_unit = "Non production"
    },
  ]

  organizational_units = [
    "Identity",
    "Non production",
  ]
}
