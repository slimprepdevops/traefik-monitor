## File structure for Traefik (http and https)

note: delete the contents of /trafeik/letsencrypt/acme.json or make it blank before use


Assign yourselves someone to create a deploy bash script to install docker and deploy all of there resources at once,

Assign yourselves someone (the champion) to add node-exporte docker image, scapre it with prometheus and add to grafana

Enable Docker Metrics

```bash
cd /etc/docker/daemon.json
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