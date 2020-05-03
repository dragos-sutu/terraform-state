include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::git@github.com:dragos-sutu/terraform-modules.git//aws/ssh?ref=master"
}

inputs = {
  key_name   = ""
  public_key = ""
  tags       = {
    "env": "non-prod",
    "managedWith": "terraform",
    "owner": "SRE",
  }
}
