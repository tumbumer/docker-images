# 1c-enterprise-desktop

[1C Enterprise desktop](https://1c-dn.com/1c_enterprise/what_is_1c_enterprise/)
for runing under GNU Linux with GUI inside the
[Docker](https://www.docker.com/) container.

## Clone repositoty

```bash
git clone git@github.com:tumbumer/docker-images.git
cd docker-images/1c-enterprise-desktop
```

## Build image

Edit the Dockerfile, set `ENV PLATFORM_VERSION` to the your vesrsion, e. g

`ENV PLATFORM_VERSION 8.3.10-2699`

Download distributive files from
[official site](https://releases.1c.ru/project/Platform83).

Extract this files to the `dist` dir

    1c-enterprise83-client_8.3.x-y_amd64.deb
    1c-enterprise83-common_8.3.x-y_amd64.deb
    1c-enterprise83-server_8.3.x-y_amd64.deb

Build

```bash
docker build -t local/1c-enterprise-desktop:version .
```

## Save/Load image (optional)

Save

    docker save local/1c-enterprise-desktop:version | gzip > 1c-enterprise-desktop_version.tar.gz

Load

    gunzip -c 1c-enterprise-desktop_version.tar.gz | docker load

## Run

```bash
xhost +
docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY local/1c-enterprise-desktop
```
