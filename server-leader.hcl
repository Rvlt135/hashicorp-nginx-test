datacenter = "dc1"

region = "global"
name = "main_server"

data_dir = "/tmp/nomad/data"

bind_addr = "0.0.0.0"

advertise { // ip addresses remote server leader
  http = "*.*.*.*"
  rpc = "*.*.*.*"
  serf = "*.*.*.*"
}

server {
  enabled = true
  bootstrap_expect = 1
}

client {
  enabled = true
  servers = ["127.0.0.1"]
  options = {
    "driver.raw_exec.enable" = "1"
  }
}

consul {
  address = "127.0.0.1:8500"
  server_service_name = "nomad"
  client_service_name = "nomad-client"
}
