<b>
	<p>How to create the Postgres Docker image/container</p>
</b>

1. Update 'deploy.sh' accordingly:
	* POSTGRES_DATA_PATH - env var specifying the host's path where the Postgres data will be stored.
	* POSTGRES_USER - env var that specifies the Psogresl admin user account (by default, it is 'postgres').
  	* POSTGRES_PASSWORD - env var specifying the password for user 'postgres'
6. Run 'deploy.sh' and wait until the Postgres docker image is built. This script creates a Docker container as well. 


<b>
	<p>How to start/stop Postgres</p>
</b>

1. docker start postgres-9.6
2. docker stop postgres-9.6

