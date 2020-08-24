#!/bin/bash

set -e

. ./env.sh $*

docker cp init.sql oracle:/init.sql

docker exec -ti -u oracle oracle sqlplus SYSTEM/$ORACLE_PWD@//localhost:1521/ORCLCDB @../../init.sql
