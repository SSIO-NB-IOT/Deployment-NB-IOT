FROM nodered/node-red:latest

COPY flows.json /data/flows.json

ENV FLOWS=flows.json

RUN npm install node-red-contrib-influxdb node-red-dashboard
