call docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions
:: call docker build . -t=grafana
:: call docker run -d --volume "C:\dev\grafana:/var/lib/grafana" -p 3000:3000 grafana
call docker-compose -f docker-compose.yaml up -d