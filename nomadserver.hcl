# Increase log verbosity
log_level = "DEBUG"

# Setup data dir
# to store status data
data_dir = "/tmp/server1"


advertise {
        #used for more agents
	rpc = "127.0.0.1:4647"
	serf = "127.0.0.1:4648"
}

# Enable the server
server {
    #server mode
    enabled = true

    # Self-elect, should be 3 or 5 for production
    bootstrap_expect = 1
}