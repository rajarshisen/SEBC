#!/bin/sh
# Confirm the path values given below correspond to your installation

#MR=/opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce
MR=/opt/cloudera/parcels/CDH-5.9.1-1.cdh5.9.1.p0.4/lib/hadoop-0.20-mapreduce
#HADOOP=/opt/cloudera/parcels/CDH/bin
HADOOP=/opt/cloudera/parcels/CDH-5.9.1-1.cdh5.9.1.p0.4/bin

# Mark start of the loop
echo Testing loop started on `date`

# Mapper containers
for i in 4    
do
   # Reducer containers
   for j in 2 
   do                 
      # Container memory
      for k in 1024 2048
      do                         
         # Set mapper JVM heap 
         MAP_MB=`echo "($k*0.8)/1" | bc` 

         # Set reducer JVM heap 
         RED_MB=`echo "($k*0.8)/1" | bc` 
		echo "Mapper containers =  | $i"
		echo "Reducer containers =  | $j"
		echo "Mapper containers memory =  | $MAP_MB"
		echo "Reducer containers memory =  | $RED_MB"
		
        time ${HADOOP}/hadoop jar ${MR}/hadoop-examples.jar teragen \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     51200000 /user/root/rajarshisen/results/tg-10GB-${i}-${j}-${k} 1>tera_${i}_${j}_${k}.out 2>tera_${i}_${j}_${k}.err                       

       time ${HADOOP}/hadoop jar $MR/hadoop-examples.jar terasort \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.job.reduces=$j \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     -Dmapreduce.reduce.memory.mb=$k \
                     -Dmapreduce.reduce.java.opts.max.heap=$RED_MB \
	             /user/root/rajarshisen/results/tg-10GB-${i}-${j}-${k}  \
                     /user/root/rajarshisen/results/ts-10GB-${i}-${j}-${k} 1>>tera_${i}_${j}_${k}.out 2>>tera_${i}_${j}_${k}.err                         

        $HADOOP/hadoop fs -rm -r -skipTrash /user/root/rajarshisen/results/tg-10GB-${i}-${j}-${k}                         
        $HADOOP/hadoop fs -rm -r -skipTrash /user/root/rajarshisen/results/ts-10GB-${i}-${j}-${k}                 
      done
   done
done

echo Testing loop ended on `date`
