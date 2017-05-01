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
