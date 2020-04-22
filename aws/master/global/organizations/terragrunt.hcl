include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::git@github.com:dragos-sutu/terraform-modules.git//aws/organizations?ref=master"
}

inputs = {
  accounts = [
    {
      email = get_env("AWS_ORG_SSO_EMAIL", "")
      name = "sso"
    }, {
      email = get_env("AWS_ORG_NONPROD_EMAIL", "")
      name = "non-prod"
    }
  ]
}
