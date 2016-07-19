# alpine-nginx
This repository contains Dockerfile for [nginx 1.10.x](https://nginx.org/)
container, based on the [nginx:1.10-alpine](https://hub.docker.com/_/nginx/)
official image.

## Install
    docker pull tumbumer/nginx

## Usage
* Create the volume folders:


    mkdir -p nginx/{conf,html}
* Specify the main nginx config:
    
    
    cp path/to/your/config nginx/conf/nginx.conf

* [optionaly] Specify html folder content:
    
    
    cp path/to/your/html/* nginx/html

* Run the container:


    docker run --name nginx -p 80:80 \
    -v $(pwd)/nginx/conf:/data/conf \
    -v $(pwd)/nginx/html:/data/html \
    tumbumer/nginx
    
## Additional

* To restart nginx:
    
    
    docker exec nginx nginx -s reload

* To run an interactive shell session:
    
    
    docker exec -it nginx ash

## Volumes
* `/data/conf` nginx config files
* `/data/html` content files
