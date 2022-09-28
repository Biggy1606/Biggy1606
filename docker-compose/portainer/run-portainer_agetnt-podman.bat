podman run --subuidname=root -d -p 9001:9001 --name portainer_agent --restart=always -v /var/run/docker.sock:/var/run/docker.sock registry.hub.docker.com/portainer/agent:latest
