#!/bin/bash

set -e

PGADMIN_DEFAULT_EMAIL=catam1976@gmail.com
export PGADMIN_DEFAULT_EMAIL

PGADMIN_DEFAULT_PASSWORD=12345678
export PGADMIN_DEFAULT_PASSWORD

docker run -p 9292:80 \
    -e PGADMIN_DEFAULT_EMAIL=$PGADMIN_DEFAULT_EMAIL \
    -e PGADMIN_DEFAULT_PASSWORD=$PGADMIN_DEFAULT_PASSWORD \
    --memory=256M \
	--cpus=0.5 \
    -d \
    --name pgadmin \
    dpage/pgadmin4