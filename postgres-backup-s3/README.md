# postgres-backup-s3

Periodically backup [PostgreSQL](https://www.postgresql.org) database on a S3 compatible storage

## Install

```bash
docker pull tumbumer/postgres-backup-s3
```

## Required vars

* **CRONTAB_LINE** [Crontab line](https://crontab.guru)
* **DB_HOST** Database host
* **DB_PORT** Database port
* **DB_NAME** Database name
* **DB_USER** Database user
* **DB_PSWD** Database password

## Usage

### Create container

```bash
docker create --name pgbackup -e CRONTAB_LINE="0 0 * * *" tumbumer/postgres-backup-s3
```

### Start container

```bash
docker start pgbackup
```

### Compose file example

