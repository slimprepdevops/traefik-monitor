## File structure for Traefik (http and https)
Run the following commands one at a time

```bash
bash traefikssl.sh
```

```bash
sh docker.sh
```

```bash
bash up.sh
```

Enable Docker Metrics

```bash
sudo nano /etc/docker/daemon.json
```

update / add this to the file
```json
{
  "metrics-addr": "0.0.0.0:9323",
  "experimental": true
}
```
save and exit

and run `sudo systemctl restart docker`

Note: to shut down all docker services, run `bash down.sh`