data "vault_aws_access_credentials" "creds" {
  backend = "${var.service_name}/aws"
  role    = "ec2_admin"
}

provider "aws" {
    region = "us-east-1"
  access_key = "${data.vault_aws_access_credentials.creds.access_key}"
  secret_key = "${data.vault_aws_access_credentials.creds.secret_key}"
}

module "mysql-server" {
  source  = "app.terraform.io/SecurityInDepth-Darnold/mysql-server/aws"
  
  # git tag -a 7.0.0 -m 'no vault roles'
  # git tag -a 8.0.0 -m 'with vault roles'
  version = "7.0.0"
  service_name = "${var.service_name}"
  db_name = "${var.db_name}"
}
