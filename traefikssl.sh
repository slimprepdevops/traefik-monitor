#!/bin/bash

cd ~/traefik-monitor/traefik/letsencrypt
rm acme.json
touch acme.json
chmod 600 acme.json