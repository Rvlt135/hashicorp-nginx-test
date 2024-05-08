node_name = "consul-server"
server    = true
bootstrap = true
ui_config {
  enabled = true
}

data_dir   = "consul/data"
log_level  = "INFO"
addresses {
  http = "0.0.0.0"
}
connect {
  enabled = true
}
