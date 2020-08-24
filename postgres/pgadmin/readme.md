<b>
	<p>How to create the pgAdmin Docker image/container</p>
</b>

1. Update 'deploy.sh' accordingly:
	* PGADMIN_DEFAULT_EMAIL - pgAdmin account name.
	* PGADMIN_DEFAULT_PASSWORD - pgAdmin password.
2. Run 'deploy.sh' and wait until the pgAdmin docker image is built. This script creates a Docker container as well. 


<b>
	<p>How to start/stop pgAdmin</p>
</b>

1. docker start pgadmin
2. docker stop pgadmin

<b>
	<p>How to use pgAdmin</p>
</b>

1. Open a browser at http://localhost:9292/
2. Use the prev defined login credentials

