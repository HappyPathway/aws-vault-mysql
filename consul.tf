provider "consul" {
  address    = "${var.consul_cluster}"
  datacenter = "${var.consul_datacenter}"
}

resource "consul_keys" "app" {
  datacenter = "${var.consul_datacenter}"
  # token      = "abcd"

  # Set the CNAME of our load balancer as a key
  key {
    path  = "${var.service_name}/${var.db_name}/host"
    value = "${module.mysql-server.host}"
  }

  key {
    path = "${var.service_name}/${var.db_name}/port"
    value = "${module.mysql-server.port}"
  }

  key {
    path = "${var.service_name}/${var.db_name}/address"
    value = "${module.mysql-server.address}"
  }

  key {
    path = "${var.service_name}/${var.db_name}/identitifier"
    value = "${module.mysql-server.db_identifier}"
  }

  key {
    path = "${var.service_name}/${var.db_name}/endpoint"
    value = "${module.mysql-server.endpoint}"
  }

  key {
    path = "${var.service_name}/${var.db_name}/db_name"
    value = "${module.mysql-server.db_name}"
  }
}