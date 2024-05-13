datacenter = "dc1"
region = "global"
name = "server"
data_dir = "/tmp/nomad/data"
bind_addr = "0.0.0.0"

advertise { // local addresses
  http = "192.168.0.15"
  rpc = "192.168.0.15"
  serf = "192.168.0.15"
}

server {
  enabled = true
  bootstrap_expect = 1
  server_join {
    retry_join = ["*.*.*.*.*:4648"]
  }
}

client {
  enabled = true
  servers = ["*.*.*.*:4647", "192.168.0.15"] //remote address leader, local address
  options = {
    "driver.raw_exec.enable" = "1"
  }
}

consul {
  address = "*.*.*.*:8500" // remote address consul
  server_service_name = "nomad-folower"
  client_service_name = "nomad-client-folower"
}