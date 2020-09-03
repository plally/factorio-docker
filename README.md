# factorio-docker


```bash
mkdir -p /opt/factorio/saves
docker run -v /opt/factorio/:/factorio --name factorio -p 34197:34197/udp -d ghcr.io/plally/factorio-server:latest
```
