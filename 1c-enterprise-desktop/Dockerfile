FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive

ENV PLATFORM_VERSION 8.3.10-2699

ADD ["dist/*.deb", "/tmp/"]

RUN \
  apt-get update -qq \
  && apt-get dist-upgrade -qq -y --no-install-recommends \
  && apt-get -qq -y --no-install-recommends install \
    apt-transport-https \
    apt-utils \
    ca-certificates \
    imagemagick \
    libcanberra-gtk-module \
    libwebkitgtk-1.0-0 \
    locales \
    packagekit-gtk3-module \
  && echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections \
  && apt-get install -qq -y --no-install-recommends ttf-mscorefonts-installer \
  && dpkg -i \
    /tmp/1c-enterprise83-common_${PLATFORM_VERSION}_amd64.deb \
    /tmp/1c-enterprise83-server_${PLATFORM_VERSION}_amd64.deb \
    /tmp/1c-enterprise83-client_${PLATFORM_VERSION}_amd64.deb \
  && rm /tmp/*.deb \
  && apt-get -qq -y --purge autoremove \
  && apt-get -qq -y clean \
  && localedef -i ru_RU -f UTF-8 -A /usr/share/locale/locale.alias ru_RU.UTF-8

ENV LANG ru_RU.utf8

CMD ["/opt/1C/v8.3/x86_64/1cv8"]
