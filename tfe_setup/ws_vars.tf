resource "tfe_variable" "VAULT_ADDR" {
  key = "VAULT_ADDR"
  value = "${var.vault_addr}"
  category = "env"
  workspace_id = "${tfe_workspace.ws.id}"
  sensitive = true
}

resource "tfe_variable" "VAULT_TOKEN" {
  key = "VAULT_TOKEN"
  value = "${var.vault_token}"
  category = "env"
  workspace_id = "${tfe_workspace.ws.id}"
  sensitive = true
}

resource "tfe_variable" "CONFIRM_DESTROY" {
  key = "CONFIRM_DESTROY"
  value = "1"
  category = "env"
  workspace_id = "${tfe_workspace.ws.id}"
}

resource "tfe_variable" "service_name" {
  key = "service_name"
  value = "${var.service_name}"
  category = "terraform"
  workspace_id = "${tfe_workspace.ws.id}"
}

resource "tfe_variable" "db_name" {
  key = "db_name"
  value = "${var.db_name}"
  category = "terraform"
  workspace_id = "${tfe_workspace.ws.id}"
}

resource "tfe_variable" "consul_cluster" {
  key = "consul_cluster"
  value = "${var.consul_cluster}"
  category = "terraform"
  workspace_id = "${tfe_workspace.ws.id}"
}