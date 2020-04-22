include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::git@github.com:dragos-sutu/terraform-modules.git//do/ssh?ref=master"
}

inputs {
  public_key_file_path = get_env("DO_PUB_KEY_PATH", "")
}
