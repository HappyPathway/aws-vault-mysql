variable "service_name" {
  type = "string"
  description = "Name of Service"
}

variable "db_name" {
  type = "string"
  description = "Name of DB"
}

variable "vault_aws_credentials_path" {
  type = "string"
  default = "aws"
  description = "Location of AWS Dynamic Secrets Engine in Vault"
}

variable "consul_cluster" {
  type = "string"
  description = "Name of Consul Workspace"
}
