:: call docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions
call docker-compose -f docker-compose.yaml up -d