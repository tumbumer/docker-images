# Dante proxy server

[Dante SOCKS5 proxy server](https://www.inet.no/dante)

## Required vars

| var | description |
|--|--|
| INTERNAL | Internal interface or address
| PORT | Proxy port
| EXTERNAL | External interface or address

## Docker example

```bash
docker run --network host --name dante -e INTERNAL=127.0.0.1 -e PORT=1080 -e EXTERNAL=enp2s0 tumbumer/dante:latest
```

## Compose file example

```compose
version: '2.4'
services:
  dante:
    image: tumbumer/dante:latest
    container_name: dante
    network_mode: host
    environment:
      - INTERNAL=127.0.0.1
      - PORT=1080
      - EXTERNAL=enp2s0
```
