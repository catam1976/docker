<b>
	<p>How to create the MySQL Docker image/container</p>
</b>

1. Update 'deploy.sh' accordingly:
	* MYSQL_DATA_PATH - env var specifying the host's path where the MySQL data will be stored.
  	* MYSQL_ROOT_PASSWORD - env var specifying the password for user 'root'
6. Run 'deploy.sh' and wait until the MySQL docker image is built. This script creates a Docker container as well. 


<b>
	<p>How to start/stop MySQL</p>
</b>

1. docker start mysql-5.7
2. docker stop mysql-5.7

