#!/bin/bash

set -e

MONGO_DATA_DB_PATH=$HOME/Data/Mongo/4.4/data/db:/data/db
export MONGO_DATA_DB_PATH

MONGO_DATA_CONFIG_DB_PATH=$HOME/Data/Mongo/4.4/data/configdb:/data/configdb
export MONGO_DATA_CONFIG_DB_PATH

docker run \
		-v $MONGO_DATA_DB_PATH \
		-v $MONGO_DATA_CONFIG_DB_PATH \
		--memory=512M \
		--cpus=0.5 \
		--publish 27017:27017 \
		--name mongo-4.4 \
		-d \
		mongo:4.4.1