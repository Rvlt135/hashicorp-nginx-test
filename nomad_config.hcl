bind_addr = "127.0.0.1"
data_dir  = "/tmp/nomad"

advertise {
  http = "127.0.0.1"
  rpc = "127.0.0.1"
  serf = "127.0.0.1"
}

server {
  enabled = true
  bootstrap_expect = 1
}

client {
  enabled = true
  options = {
    "driver.raw_exec.enable" = "1"
  }
}

consul {
  address = "127.0.0.1:8500"
  server_service_name = "nomad"
  client_service_name = "nomad-client"
}
