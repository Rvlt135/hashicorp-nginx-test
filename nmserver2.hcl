# Follower config file
datacenter = "dc1"
data_dir   = "/tmp/nomad/"
bind_addr  = "0.0.0.0"

advertise {
  http = "192.168.1.5"
  rpc = "192.168.1.5"
  serf = "192.168.1.5"
}

server {
  enabled = true
  bootstrap_expect = 1
}

client {
  enabled = true
  servers = [
    "192.168.1.15"
  ]
}

ui {
  enabled = false
}