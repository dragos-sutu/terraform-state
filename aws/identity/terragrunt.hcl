remote_state {
  backend = "s3"

  config = {
    bucket  = "terraform-state-${get_aws_account_id()}"
    key     = "${path_relative_to_include()}/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

inputs = {
  aws_region = "us-east-1"
}
