include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::git@github.com:dragossutu/terraform-modules.git//aws/iam?ref=v0.7.3"
}

inputs = {
  roles = [
    {
      name: "",
      policies_names_aws_managed: [
        "AdministratorAccess",
      ],
      trusted_account: "",
    }
  ]
}
