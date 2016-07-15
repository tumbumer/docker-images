# docker-nginx
This repository contains Dockerfile for [nginx 1.10.x](https://nginx.org/) container, based on the [nginx:1.10-alpine](https://hub.docker.com/_/nginx/) official image.

## Install
    docker pull tumbumer/nginx

## Usage

### To create container:
    docker create --name nginx -p 80:80 tumbumer/nginx
    
### You can also specify the ip address, config and html directory with the volume -v option:
    mkdir -p nginx/{conf,html}

    cp path/to/your/config nginx/conf

    docker create --name nginx \
    -p 127.0.0.1:80:80 \
    -v $(pwd)/nginx/conf:/data/conf \
    -v $(pwd)/nginx/html:/data/html \
    tumbumer/nginx

### To run container:
    docker start nginx

### To restart nginx:
    docker exec nginx nginx -s reload

### To run an interactive shell session:
    docker exec -it nginx ash
