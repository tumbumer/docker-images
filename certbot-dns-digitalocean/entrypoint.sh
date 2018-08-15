#!/bin/sh

echo "certbot dns digitalocean started"

if [ -z ${DNS_DIGITALOCEAN_TOKEN} ] ; then
  echo "error: the DNS_DIGITALOCEAN_TOKEN environment variable is not set"
  exit 1
fi
if [ -z ${DOMAINS} ] ; then
  echo "error: the DOMAINS environment variable is not set"
  exit 1
fi
if [ -z ${EMAIL} ] ; then
  echo "error: the EMAIL environment variable is not set"
  exit 1
fi

echo "dns_digitalocean_token = $DNS_DIGITALOCEAN_TOKEN" > ~/digitalocean.ini
chmod 0600 ~/digitalocean.ini

update() {
  certbot certonly --non-interactive --agree-tos --dns-digitalocean --dns-digitalocean-credentials ~/digitalocean.ini -m ${EMAIL} -d ${DOMAINS}
  sleep 10d
  update
}

update
