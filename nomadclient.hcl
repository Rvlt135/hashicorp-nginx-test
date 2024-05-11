# Increase log verbosity
log_level = "DEBUG"

# Setup data dir
# store the agent status data
data_dir = "/tmp/client1"

# Give the agent a unique name. Defaults to hostname
name = "client1"

# Enable the client
client {
    #enable client
    enabled = true
    # report to nomad server
    servers = ["127.0.0.1:4647"]
}