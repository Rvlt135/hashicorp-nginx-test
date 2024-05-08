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

Nomad:
<img width="960" alt="image" src="https://github.com/Rvlt135/hashicorp-nginx-test/assets/41593525/f535614a-6dd2-48de-890a-84709b18ec25">


Consule: 
<img width="963" alt="image" src="https://github.com/Rvlt135/hashicorp-nginx-test/assets/41593525/5b9612eb-fdbb-4746-b617-228f7d797429">

Nginx: 
<img width="899" alt="image" src="https://github.com/Rvlt135/hashicorp-nginx-test/assets/41593525/bc2a8ae5-8783-41f2-b4af-c90086f566be">
