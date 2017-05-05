<br>Cloud provider: Amazon AWS m3.extra-large </br>
<br><code>Node 1 54.206.11.198 ec2-54-206-11-198.ap-southeast-2.compute.amazonaws.com</code></br>
<br><code>Node 2 54.206.75.89 ec2-54-206-75-89.ap-southeast-2.compute.amazonaws.com</code></br>
<br><code>Node 3 54.206.82.149 ec2-54-206-82-149.ap-southeast-2.compute.amazonaws.com</code></br>
<br><code>Node 4 54.206.41.178 ec2-54-206-41-178.ap-southeast-2.compute.amazonaws.com</code></br>
<br><code>Node 5 54.252.136.92 ec2-54-252-136-92.ap-southeast-2.compute.amazonaws.com</code></br>
<br>Linux release : CentOS Linux 7 x86_64 HVM EBS </br>
<br>Demonstrate the disk capacity available on each node is >= 30 GB</br>
<br><code>
[centos@ip-172-31-14-158 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  1.1G   29G   4% /
devtmpfs        7.3G     0  7.3G   0% /dev
tmpfs           7.2G     0  7.2G   0% /dev/shm
tmpfs           7.2G   17M  7.2G   1% /run
tmpfs           7.2G     0  7.2G   0% /sys/fs/cgroup
tmpfs           1.5G     0  1.5G   0% /run/user/0
tmpfs           1.5G     0  1.5G   0% /run/user/1000
-----------------------------------------------------
[centos@ip-172-31-7-235 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  1.1G   29G   4% /
devtmpfs        7.3G     0  7.3G   0% /dev
tmpfs           7.2G     0  7.2G   0% /dev/shm
tmpfs           7.2G   17M  7.2G   1% /run
tmpfs           7.2G     0  7.2G   0% /sys/fs/cgroup
tmpfs           1.5G     0  1.5G   0% /run/user/0
tmpfs           1.5G     0  1.5G   0% /run/user/1000
-----------------------------------------------------
[centos@ip-172-31-6-201 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  1.1G   29G   4% /
devtmpfs        7.3G     0  7.3G   0% /dev
tmpfs           7.2G     0  7.2G   0% /dev/shm
tmpfs           7.2G   17M  7.2G   1% /run
tmpfs           7.2G     0  7.2G   0% /sys/fs/cgroup
tmpfs           1.5G     0  1.5G   0% /run/user/0
tmpfs           1.5G     0  1.5G   0% /run/user/1000
-----------------------------------------------------
[centos@ip-172-31-3-237 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  1.1G   29G   4% /
devtmpfs        7.3G     0  7.3G   0% /dev
tmpfs           7.2G     0  7.2G   0% /dev/shm
tmpfs           7.2G   17M  7.2G   1% /run
tmpfs           7.2G     0  7.2G   0% /sys/fs/cgroup
tmpfs           1.5G     0  1.5G   0% /run/user/1000
-----------------------------------------------------
[centos@ip-172-31-6-115 ~]$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       30G  1.1G   29G   4% /
devtmpfs        7.3G     0  7.3G   0% /dev
tmpfs           7.2G     0  7.2G   0% /dev/shm
tmpfs           7.2G   17M  7.2G   1% /run
tmpfs           7.2G     0  7.2G   0% /sys/fs/cgroup
tmpfs           1.5G     0  1.5G   0% /run/user/1000
tmpfs           1.5G     0  1.5G   0% /run/user/0

</code></br>
<br>List the command and output for yum repolist enabled</br>
<br><code>
[centos@ip-172-31-6-115 ~]$ yum repolist enabled
Loaded plugins: fastestmirror
Determining fastest mirrors
 * base: mirror.intergrid.com.au
 * extras: mirror.intergrid.com.au
 * updates: mirror.intergrid.com.au
repo id                             repo name                             status
base/7/x86_64                       CentOS-7 - Base                       9,363
extras/7/x86_64                     CentOS-7 - Extras                       337
updates/7/x86_64                    CentOS-7 - Updates                    1,577
repolist: 11,277
</code></br>
<br>Add the following Linux accounts to all nodes: cate,jemaine </br>
<br><code>
sudo groupadd kiwis
sudo groupadd aussies
sudo useradd -u 2300 cate 
sudo usermod -a -G aussies cate
sudo passwd cate 
sudo useradd -u 2900 jemaine 
sudo usermod -a -G kiwis jemaine
sudo passwd jemaine
</code></br>
<br>List the /etc/passwd entries for cate</br>
<br><code>
[root@ip-172-31-14-158 centos]# cat /etc/passwd | grep cate
cate:x:2300:2300::/home/cate:/bin/bash 
</code></br>
<br>List the /etc/passwd entries for jemaine</br>
<br><code>
[root@ip-172-31-14-158 centos]# cat /etc/passwd | grep jemaine
jemaine:x:2900:2900::/home/jemaine:/bin/bash
</code></br>
<br>List the /etc/group entries for kiwis</br>
<br><code>
[root@ip-172-31-14-158 centos]# cat /etc/group | grep kiwis
kiwis:x:1001:jemaine
</code></br>
<br>List the /etc/group entries for aussies</br>
<br><code>
[root@ip-172-31-14-158 centos]# cat /etc/group | grep aussies
aussies:x:1002:cate
</code></br>
