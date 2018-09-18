output "endpoint" {
    value = "${module.mysql-server.endpoint}"
}

output "host" {
    value = "${module.mysql-server.host}"
}

output "port" {
    value = "${module.mysql-server.port}"
}

output "service_name" {
    value = "${module.mysql-server.service_name}"
}

output "db_name" {
    value = "${module.mysql-server.db_name}"
}