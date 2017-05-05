<br>Check Database version</br>
<br><code>
[root@ip-172-31-14-158 centos]# mysqladmin -u root -p version
Enter password:
mysqladmin  Ver 9.0 Distrib 5.5.52-MariaDB, for Linux on x86_64
Copyright (c) 2000, 2016, Oracle, MariaDB Corporation Ab and others.

Server version          5.5.52-MariaDB
Protocol version        10
Connection              Localhost via UNIX socket
UNIX socket             /var/lib/mysql/mysql.sock
Uptime:                 8 min 16 sec
</code></br>
<br>Show databases </br>
<br><code>
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| hue                |
| metastore          |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
+--------------------+
</code></br>