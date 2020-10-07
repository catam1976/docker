<b>
	<p>How to create the phpMyAdmin Docker image/container</p>
</b>

1. Update 'deploy.sh' accordingly:
	* PMA_HOST - env var specifying define address/host name of the MySQL server
  	* MYSQL_ROOT_PASSWORD - env var specifying the password for user 'root'
	* More env vars be found here: https://hub.docker.com/r/phpmyadmin/phpmyadmin/
6. Run 'deploy.sh' and wait until the phpMyAdmin docker image is built. This script creates a Docker container as well. 


<b>
	<p>How to start/stop phpMyAdmin</p>
</b>

1. docker start myadmin
2. docker stop myadmin

