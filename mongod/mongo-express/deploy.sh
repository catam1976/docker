#!/bin/bash

set -e


docker run \
		-e ME_CONFIG_BASICAUTH_USERNAME='admin' \
		-e ME_CONFIG_BASICAUTH_PASSWORD='12345678' \
		-e ME_CONFIG_MONGODB_ENABLE_ADMIN='true' \
		-e ME_CONFIG_MONGODB_ADMINUSERNAME='admin' \
		-e ME_CONFIG_MONGODB_ADMINPASSWORD='12345678' \
		-e ME_CONFIG_MONGODB_PORT='27017' \
		-e ME_CONFIG_MONGODB_SERVER=192.168.0.235 \
		--memory=256M \
		--cpus=0.5 \
		--publish 8081:8081 \
		--name mongo-express \
		-d \
		mongo-express:latest