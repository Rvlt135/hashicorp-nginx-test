# hashicorp-nginx-test

install nomad + consul:
> https://developer.hashicorp.com/consul/install
> https://developer.hashicorp.com/nomad/install

start nomad agent
> nomad agent --config nomad_config.hcl

start consul agent:
> consul agent -dev -config-dir=consul/config.hcl

start job nomad nginx:
> nomad job run nomad/jobs/nginx.nomad.hcl 
