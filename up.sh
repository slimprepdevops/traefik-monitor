#!/bin/bash

# List of folders containing docker-compose.yaml
folders=(
    "traefik"
    "alertmanager"
    "apps/go-app"
    "apps/nginx"
    "cadvisor"
    "grafana"
    "node-exporter"
    "prometheus"
)

# Loop through folders and run docker-compose up -d
for folder in "${folders[@]}"
do
    echo "Starting services in $folder..."
    (cd "$folder" && docker-compose up -d)
done

echo "All services started."
