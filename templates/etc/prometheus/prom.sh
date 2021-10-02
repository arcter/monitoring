#!/usr/bin/env bash

#source ../../creds/prometheus.env

# Get script's path
DIR="$( cd "$(dirname "$0")" ; pwd -P )"

podman run \
  --rm \
  --name prometheus-server \
  --net prometheus \
  --publish 127.0.0.1:9090:9090 \
  --volume $DIR/prometheus.yml:/etc/prometheus/prometheus.yml \
  --volume $DIR/alert-rules:/etc/prometheus/alert-rules \
prom/prometheus \
  --web.external-url=https://monitoring.kszk.bme.hu/prometheus \
  --web.route-prefix=/ \
  --storage.tsdb.retention.time=90d \
  --config.file=/etc/prometheus/prometheus.yml \
  --web.enable-lifecycle \
  --query.timeout=20s
