# nullinside-grafana

This is the project responsible for configuring and deploying Grafana for application log collection.

## Setup Local Docker Container Ingestion

In order to setup local docker container ingestion you simply need to install the plugin for docker and subsequently add two lines of configuration to each docker image deployment

### Plugin

Install the plugin using the following line: `docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions`

This only needs to be done once

### Configure Docker Command Line

For any docker image deployment using the docker command line (NOT docker compose) you simply add the following to the command line's run command:
`docker run --log-driver=loki --log-opt loki-url="http://192.168.1.4:3100/loki/api/v1/push"`

### Configure Docker Compose

If you are using docker compose you'll add the following to the service:
```
version: ...
services:
  serviceName:
    image: ...
    logging:
      driver: loki
      options:
        loki-url: "http://192.168.1.4:3100/loki/api/v1/push"
```
