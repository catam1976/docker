#!/bin/bash

set -e

POSTGRES_DATA_PATH=C:/Data/Postgres/9.6/data:/var/lib/postgresql/data
export POSTGRES_DATA_PATH

POSTGRES_USER=postgres
export POSTGRES_USER

POSTGRES_PASSWORD=12345678
export POSTGRES_PASSWORD

docker run \
        --detach \
		--memory=512M \
		--cpus=0.5 \
		--publish 5432:5432 \
		--volume $POSTGRES_DATA_PATH \
		--env POSTGRES_USER=$POSTGRES_USER \
		--env POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
		--name postgres-9.6 \
		postgres:9.6.18-alpine