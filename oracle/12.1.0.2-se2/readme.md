<b>
	<p>How to create the Oracle Docker image/container</p>
</b>


1. Windows - install wget for Windows - from https://eternallybored.org/misc/wget/
2. Install 'cookies.txt' extension in Chrome
3. Within Chrome, initiate the download of (12.1.0.2.0) - Standard Edition (SE2) from https://www.oracle.com/ro/database/technologies/oracle-database-software-downloads.html#12c
4. Once download started, cancel it.
5. Export the cookies from Chrome to a file named 'cookies.txt' (situated in the same dir as deploy.sh script):
    * On Chrome: click on the "cookies.txt export" icon in the toolbar (the icon is a blue "C" with an arrow inside), select the entire contents of the cookies and paste it into the 'cookies.txt' file.
6. Update 'env.sh' accordingly:
	* ORACLE_DATA_PATH - env var specifying the host's path where the Oracle data will be stored
  	* ORACLE_PWD -  - env var specifying the password for user SYSTEM
8. Just for Linux: after defining the value for ORACLE_DATA_PATH, run the following commands (54321:54322 are the Oracle Linux user:group ids)
	* mkdir -p $ORACLE_DATA_PATH || true
	* chmod 755 $ORACLE_DATA_PATH
	* sudo chown 54321:54322 $ORACLE_DATA_PATH
8. Run 'deploy.sh' and wait until the Oracle docker image is built. This script creates a Docker container as well. 
9. Optionally, fill 'init.sql' with any initialisation scripts and run 'initdb.sh'

<b>
	<p>Oracle credentials: </p>
</b>

1. Database SID: ORCLCDB
2. Account: SYSTEM
3. Password: controlled by env var ORACLE_PWD defined in 'env.sh'
4. Port: 1521
5. JDBC URL pattern: jdbc:oracle:thin:@localhost:1521:ORCLCDB

<b>
	<p>Start/stop Oracle: </p>
</b>

1. docker start oracle
2. docker stop oracle

<b>
	<p>Using SQLPlus: </p>
</b>

docker exec -ti -u oracle oracle sqlplus SYSTEM/$ORACLE_PWD@//localhost:1521/ORCLCDB