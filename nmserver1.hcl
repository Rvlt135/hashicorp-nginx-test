bind_addr = "0.0.0.0"
data_dir  = "/tmp/nomad"

advertise {
  http = "192.168.1.15"
  rpc = "192.168.1.15"
  serf = "192.168.1.15"
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