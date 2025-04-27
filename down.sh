#!/bin/bash

# List of folders containing docker-compose.yaml
folders=(
    "alertmanager"
    "apps/go-app"
    "apps/nginx"
    "cadvisor"
    "grafana"
    "node-exporter"
    "prometheus"
    "traefik"
)

# Loop through folders and run docker-compose down
for folder in "${folders[@]}"
do
    echo "Stopping services in $folder..."
    (cd "$folder" && docker-compose down)
done

echo "All services stopped."
