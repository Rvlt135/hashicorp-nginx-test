datacenter = "dc1"
node_name = "consul-client-folower"
server    = false
bootstrap = false
bind_addr = "0.0.0.0"

ui_config {
  enabled = true
}

data_dir   = "consul/data"
log_level  = "INFO"
addresses: {
      "dns": "127.0.0.1",
      "grpc": "127.0.0.1",
      "http": "127.0.0.1"
}

connect {
  enabled = true
}

retry_join = ["*.*.*.*"] // ip addresses leader server

