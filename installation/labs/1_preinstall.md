<br>Become a super user </br>
<br><code>sudo su</code></br>
<br>change swappiness to 1</br>
<br><code>sudo sysctl vm.swappiness=1</code></br>
<br>Verify Swapiness</br>
<br><code>cat /proc/sys/vm/swappiness</code></br>
<br>Show the mount attributes of your volume<br>
<br><code>sudo parted -l </code></br>
<br>Disable transparent hugepage support</br>
<br><code>echo never > /sys/kernel/mm/transparent_hugepage/enabled </code></br>
<br>Verify transparent hugepage support</br>
<br><code>cat /sys/kernel/mm/transparent_hugepage/enabled</code></br>
<br>List your network interface configuration</br>
<br><code>ip link show</code></br>
<br>Install NTP</br>
<br><code>yum install ntp ntpdate ntp-doc</code></br>
<br>Start NTP</br>
<br><code>chkconfig ntpd on</code></br>
<br>Synchronize the system clock with 0.pool.ntp.org server</br>
<br><code>ntpdate pool.ntp.org</code></br>
<br>Install NSCD</br>
<br><code>yum install nscd</code></br>
<br>Start nscd</br>
<br><code>chkconfig nscd on</code></br>
<br>Install MariaDB</br>
<br><code>sudo yum install mariadb-server</code></br>
<br>sudo yum install  mariadb-server-5.5 mariadb-client-5.5 --for particular version</br>
<br> mysqladmin -u root -p version -- check database version</br>
<br>Stop the MariaDB server if it is running</br>
<br><code> sudo service mariadb stop</code></br>
<br>Edit my.cnf</br>
<br><code> vi /etc/my.cnf</code></br>
<br>Set transaction isolation level to read committed</br>
<br><code>transaction-isolation = READ-COMMITTED</code></br>
<br><code>innodb_flush_method = O_DIRECT</code></br>
<br><code>key_buffer = 16M</code></br>
<br><code>key_buffer_size = 32M</code></br>
<br><code>max_allowed_packet = 32M</code></br>
<br><code>thread_stack = 256K</code></br>
<br><code>thread_cache_size = 64</code></br>
<br><code>query_cache_limit = 8M</code></br>
<br><code>query_cache_size = 64M</code></br>
<br><code>query_cache_type = 1</code></br>
<br><code>innodb_file_per_table = 1</code></br>
<br><code>innodb_flush_log_at_trx_commit  = 2</code></br>
<br><code>innodb_log_buffer_size = 64M</code></br>
<br><code>innodb_buffer_pool_size = 4G</code></br>
<br><code>innodb_thread_concurrency = 8</code></br>
<br><code>innodb_log_file_size = 512M</code></br>
<br>Ensure the MariaDB server starts at boot</br>
<br><code>sudo systemctl enable mariadb</code></br>
<br>Start the MariaDB server</br>
<br><code>sudo service mariadb start</code></br>
<br>Set the MariaDB root password</br>
<br><code>sudo /usr/bin/mysql_secure_installation</code></br>
<br>password = 12345</br>
<br>Change MariaDB password</br>
<br><code>
[...]
Enter current password for root (enter for none):
OK, successfully used password, moving on...
[...]
Set root password? [Y/n] y
New password:
Re-enter new password:
Remove anonymous users? [Y/n] Y
[...]
Disallow root login remotely? [Y/n] N
[...]
Remove test database and access to it [Y/n] Y
[...]
Reload privilege tables now? [Y/n] Y
All done!
</code></br>
<br>Create directory java</br>
<br><code>cd /usr/share</code></br>
<br><code>mkdir java</code></br>
<br>Give permission to java directory</br>
<br><code>chmod -R 777 java</code></br>
<br>Install jdbc driver IN ALL NODES</br>
<br><code>yum install mysql-connector-java</code></br>
<br>Log into MariaDB as the root user</br>
<br><code>mysql -u root -p</code></br>
<br>Password is 12345</br>
<br>Create databses Activity Monitor, Reports Manager, Hive Metastore Server, Sentry Server, Cloudera Navigator Audit Server, Cloudera Navigator Metadata Server</br>
<br><code>create database amon DEFAULT CHARACTER SET utf8;</code></br>
<br><code>grant all on amon.* TO 'amon'@'%' IDENTIFIED BY 'amon_password';</code></br>
<br><code>create database rman DEFAULT CHARACTER SET utf8;</code></br>
<br><code>grant all on rman.* TO 'rman'@'%' IDENTIFIED BY 'rman_password';</code></br>
<br><code>create database metastore DEFAULT CHARACTER SET utf8;</code></br>
<br><code>grant all on metastore.* TO 'hive'@'%' IDENTIFIED BY 'hive_password';</code></br>
<br><code>create database sentry DEFAULT CHARACTER SET utf8;</code></br>
<br><code>grant all on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'sentry_password';</code></br>
<br><code>create database nav DEFAULT CHARACTER SET utf8;</code></br>
<br><code>grant all on nav.* TO 'nav'@'%' IDENTIFIED BY 'nav_password';</code></br>
<br><code>create database navms DEFAULT CHARACTER SET utf8;</code></br>
<br><code>grant all on navms.* TO 'navms'@'%' IDENTIFIED BY 'navms_password';</code></br>
<br>Create Hue Database</br>
<br><code>create database hue default character set utf8 default collate utf8_general_ci;</code></br>
<br><code>grant all on hue.* to 'hue'@'%' identified by 'huepassword';</code></br>
<br>Verify the connection to the Hue database</br>
<br><code>mysql -u hue -p</code></br>
<br>Password is huepassword</br>
<br>Create the Oozie Database and Oozie MariaDB User</br>
<br><code>mysql -u root -p</code></br>
<br>Password is 12345</br>
<br><code>create database oozie;</code></br>
<br><code>grant all privileges on oozie.* to 'oozie'@'localhost' identified by 'oozie';</code></br>
<br><code>grant all privileges on oozie.* to 'oozie'@'%' identified by 'oozie';</code></br>
<br><code>exit;</code></br>
<br>Copy java jdbc driver to oozie folder</br>
<br><code> sudo mkdir -p /var/lib/oozie/</code></br>
<br><code> sudo cp /usr/share/java/mysql-connector-java-5.1.42-bin.jar /var/lib/oozie/mysql-connector-java-5.1.42-bin.jar</code></br>
<br>Python veriosn check, must be 2.6 or higher</br>
<br><code>python --version</code></br>
<br>Install pip for python</br>
<br><code>sudo easy_install pip</code></br>
<br>Install Python-PostgreSQL Database Adapter psycopg2</br>
<br><code>pip install psycopg2</code></br>
<br>Save the appropriate Cloudera Manager repo file (cloudera-manager.repo) from location https://archive.cloudera.com/cm5/redhat/5/x86_64/cm/cloudera-manager.repo</br>
<br><code>sudo mkdir -p/etc/yum.repos.d</code></br>
<br><code>sudo cp /tmp/cloudera-manager.repo /etc/yum.repos.d/cloudera-manager.repo</code></br>
<br>Install the JDK from a repository</br>
<br><code>sudo yum install oracle-j2sdk1.7</code></br>
<br>Install the Cloudera Manager Server Packages</br>
<br><code>sudo yum install cloudera-manager-agent cloudera-manager-daemons</code></br>
<br>Show prepare database command location</br>
tar zxvf mysql-connector-java-5.1.42.tar.gz
sudo cp /tmp/mysql-connector-java-5.1.42/mysql-connector-java-5.1.42-bin.jar /usr/share/cmf/lib/mysql-connector-java.jar
<br><code>sudo find / -name "scm_prepare_database*" -print</code></br>
<br>Prepare databases</br>
<br><code>/usr/share/cmf/schema/scm_prepare_database.sh mysql rman rman rman_password</code></br>
<br><code>/usr/share/cmf/schema/scm_prepare_database.sh mysql metastore hive hive_password</code></br>
<br><code>/usr/share/cmf/schema/scm_prepare_database.sh mysql sentry sentry sentry_password</code></br>
<br><code>/usr/share/cmf/schema/scm_prepare_database.sh mysql nav nav nav_password</code></br>
<br><code>/usr/share/cmf/schema/scm_prepare_database.sh mysql navms navms navms_password</code></br>
<br><code>/usr/share/cmf/schema/scm_prepare_database.sh mysql amon amon amon_password</code></br>
<br><code>/usr/share/cmf/schema/scm_prepare_database.sh mysql oozie oozie oozie</code></br>
<br><code>/usr/share/cmf/schema/scm_prepare_database.sh mysql hue hue huepassword</code></br>
<br>Start Cloudera Manager server agent</br>
<br><code>sudo service cloudera-scm-server start</code></br>
<br>Check the server log for errors</br>
<br><code>vi /var/log/cloudera-scm-server/cloudera-scm-server.log</code></br>
<br>Open Cloudera manager</br>
<br><code>http://54.206.45.12:7180</code></br>
<br>Disable SELINUX</br>
<br><code>vi /etc/sysconfig/selinux</code></br>
<br>Edit config.ini with the ip address of the server at the top</br>
<br><code> vi /etc/cloudera-scm-agent/config.ini</code></br>
<br><code>vi /var/log/cloudera-scm-agent/cloudera-scm-agent.log</code></br>
<br>Restart the cloudera scm server if the node shows red</br>
<br><code>service cloudera-scm-agent restart</code></br>
