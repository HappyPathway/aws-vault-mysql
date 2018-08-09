data "vault_aws_access_credentials" "creds" {
  backend = "${var.service_name}/aws"
  role    = "ec2_admin"
}

provider "aws" {
  access_key = "${data.vault_aws_access_credentials.creds.access_key}"
  secret_key = "${data.vault_aws_access_credentials.creds.secret_key}"
}

module "mysql-server" {
  source  = "app.terraform.io/SecurityInDepth-Darnold/mysql-server/aws"
  version = "1.1.0"
  service_name = "${var.service_name}"
  db_name = "${var.db_name}"
}