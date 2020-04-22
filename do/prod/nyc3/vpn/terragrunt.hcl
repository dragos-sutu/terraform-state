include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::git@github.com:dragos-sutu/terraform-modules.git//do/vpn?ref=master"
}

inputs = {
  droplet_image   = "fedora-31-x64"
  droplet_name    = "vpn"
  droplet_size    = "s-1vcpu-1gb"
  droplet_ssh_key = "key"
  ipv6            = true
  tags            = ["vpn"]
}
