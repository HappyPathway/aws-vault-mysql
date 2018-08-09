output "endpoint" {
    value = "${module.mysql-server.endpoint}"
}

output "vault_mount" {
    value = "${module.mysql-server.vault_mount}"
}