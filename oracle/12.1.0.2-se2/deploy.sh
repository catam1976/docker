#!/bin/bash

set -e

. ./env.sh $*

FILE=./cookies.txt
if [ ! -f "$FILE" ]; then
    echo "See readme.md; file ./cookies.txt needs to be initiated as described in readme.txt"
fi

deleteDockerArtefacts() 
{
	docker stop oracle || true
	docker rm oracle || true
	docker rmi oracle/database:12.1.0.2-se2 || true
}


buildDockerImage()
{
	rm -rf work
	mkdir work

	cd work 

	#wget --load-cookies=../cookies.txt --no-check-certificate  https://download.oracle.com/otn/linux/oracle12c/121020/linuxamd64_12102_database_se2_1of2.zip 
	#wget --load-cookies=../cookies.txt --no-check-certificate  https://download.oracle.com/otn/linux/oracle12c/121020/linuxamd64_12102_database_se2_2of2.zip

	cp C:/Users/cmihalac/Downloads/linuxamd64_12102_database_se2_1of2.zip ./linuxamd64_12102_database_se2_1of2.zip
	cp C:/Users/cmihalac/Downloads/linuxamd64_12102_database_se2_2of2.zip ./linuxamd64_12102_database_se2_2of2.zip

	git clone https://github.com/oracle/docker-images.git

	mv linuxamd64_12102_database_se2_1of2.zip ./docker-images/OracleDatabase/SingleInstance/dockerfiles/12.1.0.2/
	mv linuxamd64_12102_database_se2_2of2.zip ./docker-images/OracleDatabase/SingleInstance/dockerfiles/12.1.0.2/

	cd ./docker-images/OracleDatabase/SingleInstance/dockerfiles

	./buildDockerImage.sh -v 12.1.0.2 -s -i

	cd ../../../../..
	rm -rf work
}


startOracleAsDockerContainer()
{
	docker run --memory=4096M --cpus=1 --name oracle -p 1521:1521 -p 5500:5500 -v $ORACLE_DATA_PATH:/opt/oracle/oradata -e ORACLE_PWD=$ORACLE_PWD oracle/database:12.1.0.2-se2
}


deleteDockerArtefacts
buildDockerImage
startOracleAsDockerContainer
