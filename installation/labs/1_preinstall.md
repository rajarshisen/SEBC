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
