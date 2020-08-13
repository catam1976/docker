#!/bin/bash

set -e

docker run -p 9292:80 \
    -e 'PGADMIN_DEFAULT_EMAIL=cmihalac' \
    -e 'PGADMIN_DEFAULT_PASSWORD=12345678' \
    -d \
    --name pgadmin \
    dpage/pgadmin4