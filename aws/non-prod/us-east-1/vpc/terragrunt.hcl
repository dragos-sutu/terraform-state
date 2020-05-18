include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::git@github.com:dragos-sutu/terraform-modules.git//aws/vpc?ref=master"
}

inputs = {
  availability_zones = []

  cidr_block = ""

  name = "non-prod"

  nat = ""

  tags = {}
}
