datacenter = "dc1"
node_name = "consul-server-main"
server    = true
bootstrap = true
bind_addr = "0.0.0.0"
advertise_addr = "*.*.*.*" // ip addresses server
retry_join = ["*.*.*.*", "192.168.0.15"] // ip addresses and remote server follower

ui_config {
  enabled = true
}

data_dir   = "consul/data"
log_level  = "INFO"

addresses {
  http = "127.0.0.1"
}

connect {
  enabled = true
}