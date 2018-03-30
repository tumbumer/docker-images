#!/usr/bin/env bash

set -e

if [ "$1" = 'crond' ]; then

  if [ -z "$CRONTAB_LINE" ]; then
    echo "Need to set CRONTAB_LINE"
    exit 1;
  fi
  if [ -z "$DB_HOST" ]; then
    echo "Need to set DB_HOST"
    exit 1;
  fi
  if [ -z "$DB_PORT" ]; then
    echo "Need to set DB_PORT"
    exit 1;
  fi
  if [ -z "$DB_NAME" ]; then
    echo "Need to set DB_NAME"
    exit 1;
  fi
  if [ -z "$DB_USER" ]; then
    echo "Need to set DB_USER"
    exit 1;
  fi
  if [ -z "$DB_PSWD" ]; then
    echo "Need to set DB_PSWD"
    exit 1;
  fi

  echo -e "$CRONTAB_LINE /usr/local/bin/backup.sh\n" >> /etc/crontabs/root

  exec "$@"
else
  exec "$@"
fi
