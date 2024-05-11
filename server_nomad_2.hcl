bind_addr = "0.0.0.0"
data_dir  = "/tmp/nomad/data"
datacenter = "nomad_2"

advertise {
  http = "127.0.0.1"
  rpc = "127.0.0.1"
  serf = "127.0.0.1"
}

server {
  enabled = true
  bootstrap_expect = 3
}

client {
  enabled = true
  servers = ["127.0.0.1"]
}

plugin "raw_exec" {
  config {
    enabled = true
  }
}

consul {
  address = "127.0.0.1:8500"
  server_service_name = "nomad"
  client_service_name = "nomad-client"
}
