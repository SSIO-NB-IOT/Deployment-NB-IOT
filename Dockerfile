FROM grafana/grafana:latest

ARG INFLUXDB_TOKEN

ENV GF_USERS_DEFAULT_THEME=light

ENV GF_AUTH_ANONYMOUS_ENABLED=true

COPY ./grafana/dashboard.yaml /etc/grafana/provisioning/dashboards/main.yaml
COPY ./grafana/dashboards /var/lib/grafana/dashboards
COPY ./grafana/provisioning /etc/grafana/provisioning/datasources

RUN sed -i "s/\${INFLUXDB_TOKEN}/${INFLUXDB_TOKEN}/" /etc/grafana/provisioning/datasources/datasource.yml

VOLUME ["var/lib/grafana","/etc/grafana","/etc/grafana/provisioning/datasources"]

EXPOSE 3000

CMD ["grafana-server"]
