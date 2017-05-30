<br>Install MariaDB 5.5 server, as appropriate, on the first node listed - Node 1 54.206.11.198 ec2-54-206-11-198.ap-southeast-2.compute.amazonaws.com</br>
<br><code>sudo yum install mariadb-server</code></br>
<br>Install the appropriate JDBC connector jar on all cluster nodes</br>
```
cd /tmp
tar zxvf mysql-connector-java-5.1.42.tar.gz
mkdir -p /usr/share/cmf/lib/
sudo cp /tmp/mysql-connector-java-5.1.42/mysql-connector-java-5.1.42-bin.jar /usr/share/cmf/lib/mysql-connector-java.jar
```
<br>Stop MariaDB servie if running</br>
<br><code>sudo service mariadb stop</code></br>
<br>Edit my.cnf</br>
<br><code> vi /etc/my.cnf</code></br>
<br>Add the following</br>
```
transaction-isolation = READ-COMMITTED
# Disabling symbolic-links is recommended to prevent assorted security risks;
# to do so, uncomment this line:
# symbolic-links = 0

key_buffer = 16M
key_buffer_size = 32M
max_allowed_packet = 32M
thread_stack = 256K
thread_cache_size = 64
query_cache_limit = 8M
query_cache_size = 64M
query_cache_type = 1

max_connections = 550
#expire_logs_days = 10
#max_binlog_size = 100M

#log_bin should be on a disk with enough free space. Replace '/var/lib/mysql/mysql_binary_log' with an appropriate path for your system
#and chown the specified folder to the mysql user.
log_bin=/var/lib/mysql/mysql_binary_log

binlog_format = mixed

read_buffer_size = 2M
read_rnd_buffer_size = 16M
sort_buffer_size = 8M
join_buffer_size = 8M

# InnoDB settings
innodb_file_per_table = 1
innodb_flush_log_at_trx_commit  = 2
innodb_log_buffer_size = 64M
innodb_buffer_pool_size = 4G
innodb_thread_concurrency = 8
innodb_flush_method = O_DIRECT
innodb_log_file_size = 512M

[mysqld_safe]
log-error=/var/log/mariadb/mariadb.log
pid-file=/var/run/mariadb/mariadb.pid
```
<br>Ensure the MariaDB server starts at boot</br>
<br><code>sudo systemctl enable mariadb</code></br>
<br>Start the MariaDB database service</br>
<br><code>sudo service mariadb start</code></br>

<br>Set the MariaDB root password</br>
<br><code>sudo /usr/bin/mysql_secure_installation</code></br>
<br>password = 12345</br>
<br>Change MariaDB password</br>
```
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
<br>Create the following databases - scm,rman,hive,oozie,hue,sentry</br>
```
mysql -u root -p

create database scm DEFAULT CHARACTER SET utf8;
grant all on scm.* TO 'scm'@'%' IDENTIFIED BY 'scm_password';

create database rman DEFAULT CHARACTER SET utf8;
grant all on rman.* TO 'rman'@'%' IDENTIFIED BY 'rman_password';

create database metastore DEFAULT CHARACTER SET utf8;
grant all on metastore.* TO 'hive'@'%' IDENTIFIED BY 'hive_password';

create database sentry DEFAULT CHARACTER SET utf8;
grant all on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'sentry_password';

create database hue default character set utf8 default collate utf8_general_ci;
grant all on hue.* to 'hue'@'%' identified by 'huepassword';

create database oozie;
grant all privileges on oozie.* to 'oozie'@'%' identified by 'oozie';
</code></br>

