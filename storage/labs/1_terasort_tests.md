<br>------ Start HDFS LAB -----</br>
<br>Create a HDFS user as root in Hue</br>
<br><code>Login as root in Hue and create a folder 'rajarshisen' underneath root</code></br>
<br>Run the commmand to create teragen test data file as user root</br>
<br><code>time hadoop jar /opt/cloudera/parcels/CDH-5.9.1-1.cdh5.9.1.p0.4/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=4 -D dfs.block.size=33554432 100000000  /user/root/rajarshisen/terasort-input</code></br>
<br>Time reporting for teragen command</br>
<br>real    2m44.338s</br>
<br>user    0m5.952s</br>
<br>sys     0m0.208s</br>
<br><code>time hadoop jar /opt/cloudera/parcels/CDH-5.9.1-1.cdh5.9.1.p0.4/jars/hadoop-examples.jar  terasort /user/root/rajarshisen/terasort-input /user/root/rajarshisen/terasort-output</code></br>
<br>Time reporting for terasort command</br>
<br>real    7m5.712s</br>
<br>user    0m8.898s</br>
<br>sys     0m0.351s</br>
