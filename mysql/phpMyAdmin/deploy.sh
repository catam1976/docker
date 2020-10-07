#!/bin/bash

set -e

MYSQL_ROOT_PASSWORD=12345678
export MYSQL_ROOT_PASSWORD

PMA_HOST=ubuntu
export PMA_HOST

docker run -p 9393:80 \
        --memory=256M \
        --cpus=0.5 \
        -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD \
        -e PMA_HOST=$PMA_HOST \
        -d \
        --name myadmin \
        phpmyadmin:5