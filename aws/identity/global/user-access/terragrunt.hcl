include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::git@github.com:dragos-sutu/terraform-modules.git//aws/user-access-manager?ref=master"
}

inputs = {
  managed_accounts_ids = []
  pgp_key = ""
}
