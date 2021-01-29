<b>
	<p>How to create the Mongo-Express Docker image/container</p>
</b>

1. Update 'deploy.sh' accordingly:
	* ME_CONFIG_BASICAUTH_USERNAME - mongo-express web username.
	* ME_CONFIG_BASICAUTH_PASSWORD - mongo-express web password.
	* ME_CONFIG_MONGODB_ADMINUSERNAME - MongoDB admin username.
	* ME_CONFIG_MONGODB_ADMINPASSWORD - MongoDB password username.
	* ME_CONFIG_MONGODB_PORT - MongoDB port.
	* ME_CONFIG_MONGODB_SERVER - MongoDB container name. Use comma delimited list of host names for replica sets.
6. Run 'deploy.sh' and wait until the Mongo-Express docker image is built. This script creates a Docker container as well. 


<b>
	<p>How to start/stop Mongo-Express</p>
</b>

1. docker start mongo-4.4.1
2. docker stop mongo-4.4.1

