<b>
	<p>How to create the Mongo 4.4.1 Docker image/container</p>
</b>

1. Update 'deploy.sh' accordingly:
	* MONGO_DATA_DB_PATH - env var specifying the host's path where the Mongo data will be stored.
  	* MONGO_DATA_CONFIG_DB_PAT - env var specifying the host's path where the Mongo configuration data will be stored.
  	* MONGO_INITDB_ROOT_USERNAME - env var specifying the authentication account name.
  	* MONGO_INITDB_ROOT_PASSWORD - env var specifying the authentication password.
6. Run 'deploy.sh' and wait until the Mongo docker image is built. This script creates a Docker container as well. 


<b>
	<p>How to start/stop Mongo</p>
</b>

1. docker start mongo-4.4.1
2. docker stop mongo-4.4.1

