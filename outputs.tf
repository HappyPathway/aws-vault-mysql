output "endpoint" {
    value = "${module.mysql-server.endpoint}"
}

output "vault_mount" {
    value = "${moudel.mysql-server.vault_mount}"
}