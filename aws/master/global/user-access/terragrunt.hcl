include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::git@github.com:dragos-sutu/terraform-modules.git//aws/user-access-managed?ref=master"
}

inputs = {
  manager_account_id = ""
}
