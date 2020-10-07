#!/bin/bash

set -e

MYSQL_DATA_PATH=$HOME/Data/MySql/5.7:/var/lib/mysql
export MYSQL_DATA_PATH

MYSQL_ROOT_PASSWORD=12345678
export MYSQL_ROOT_PASSWORD

docker run \
		-v $MYSQL_DATA_PATH \
		-e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD \
		--memory=512M \
		--cpus=0.5 \
		--publish 3306:3306 \
		-d \
		--name mysql-5.7 \
		mysql:5.7