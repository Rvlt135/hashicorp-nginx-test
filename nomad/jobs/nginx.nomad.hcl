job "nginx-test" {
  type = "service"
  group "nginx" {
    count = 1
    task "nginx" {
      driver = "docker"
      config {
        image = "nginx:latest"
        port_map {
          http = 8080
        }
        volumes = [
          "custom/default.conf:/etc/nginx/conf.d/default.conf"
        ]
      }
      template {
        data = <<EOH
          server {
            listen 8080;
            server_name localhost;
            location / {
              default_type text/plain;
              return 200 "test job\n";
            }
          }
        EOH
        destination = "custom/default.conf"
      }
      resources {
        cpu    = 100 # 100 MHz
        memory = 128 # 128 MB
        network {
          mbits = 10
          port "http" {
              static = 8080
          }
        }
      }
      service {
        name = "nginx"
        tags = [ "nginx" ]
        port = "http"
        check {
          type     = "tcp"
          interval = "10s"
          timeout  = "2s"
        }
      }
    }
  }
}