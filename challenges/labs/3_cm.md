<br><code>
[centos@ip-172-31-6-115 ~]$ hdfs dfs -ls /user
Found 9 items
drwxr-xr-x   - admin   admin               0 2017-05-05 02:10 /user/admin
drwxr-xr-x   - cate    cate                0 2017-05-05 02:11 /user/cate
drwxr-xr-x   - hdfs    supergroup          0 2017-05-05 02:10 /user/hdfs
drwxrwxrwx   - mapred  hadoop              0 2017-05-05 01:20 /user/history
drwxrwxr-t   - hive    hive                0 2017-05-05 01:59 /user/hive
drwxrwxr-x   - hue     hue                 0 2017-05-05 01:59 /user/hue
drwxrwxr-x   - impala  impala              0 2017-05-05 01:59 /user/impala
drwxr-xr-x   - jemaine jemaine             0 2017-05-05 02:11 /user/jemaine
drwxrwxr-x   - oozie   oozie               0 2017-05-05 02:09 /user/oozie
</code></br>
<br><code>

{
  "items" : [ {
    "hostId" : "2cc29887-b040-4759-9c3f-89485246f4f0",
    "ipAddress" : "172.31.14.158",
    "hostname" : "ip-172-31-14-158.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-14-158.ap-southeast-2.compute.internal:7180/cmf/hostRedirect/2cc29887-b040-4759-9c3f-89485246f4f0",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  }, {
    "hostId" : "89d44fb9-80d7-40af-bf91-7d6cd5fbb134",
    "ipAddress" : "172.31.3.237",
    "hostname" : "ip-172-31-3-237.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-14-158.ap-southeast-2.compute.internal:7180/cmf/hostRedirect/89d44fb9-80d7-40af-bf91-7d6cd5fbb134",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  }, {
    "hostId" : "ea32358c-140d-439b-b014-91a987074517",
    "ipAddress" : "172.31.6.115",
    "hostname" : "ip-172-31-6-115.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-14-158.ap-southeast-2.compute.internal:7180/cmf/hostRedirect/ea32358c-140d-439b-b014-91a987074517",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  }, {
    "hostId" : "4006aa85-ef4b-457b-ad51-33c30a3b4af1",
    "ipAddress" : "172.31.6.201",
    "hostname" : "ip-172-31-6-201.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-14-158.ap-southeast-2.compute.internal:7180/cmf/hostRedirect/4006aa85-ef4b-457b-ad51-33c30a3b4af1",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  }, {
    "hostId" : "429dd009-044a-40a6-9578-bf9ca50e4e7f",
    "ipAddress" : "172.31.7.235",
    "hostname" : "ip-172-31-7-235.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-172-31-14-158.ap-southeast-2.compute.internal:7180/cmf/hostRedirect/429dd009-044a-40a6-9578-bf9ca50e4e7f",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  } ]
}
</code></br>
<br>
http://54.206.11.198:7180/api/v6/clusters/rajarshisen/services
</br>
{
  "items" : [ {
    "name" : "hive",
    "type" : "HIVE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-14-158.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/hive",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HIVE_HIVEMETASTORES_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "HIVE_HIVESERVER2S_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Hive"
  }, {
    "name" : "zookeeper",
    "type" : "ZOOKEEPER",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-14-158.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/zookeeper",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "ZOOKEEPER_CANARY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "ZOOKEEPER_SERVERS_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "ZooKeeper"
  }, {
    "name" : "hue",
    "type" : "HUE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-14-158.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/hue",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HUE_HUE_SERVERS_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Hue"
  }, {
    "name" : "oozie",
    "type" : "OOZIE",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-14-158.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/oozie",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "OOZIE_OOZIE_SERVERS_HEALTHY",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Oozie"
  }, {
    "name" : "impala",
    "type" : "IMPALA",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-14-158.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/impala",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "IMPALA_ASSIGNMENT_LOCALITY",
      "summary" : "DISABLED"
    }, {
      "name" : "IMPALA_CATALOGSERVER_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "IMPALA_IMPALADS_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "IMPALA_STATESTORE_HEALTH",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "Impala"
  }, {
    "name" : "yarn",
    "type" : "YARN",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-14-158.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/yarn",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "YARN_JOBHISTORY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_NODE_MANAGERS_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_RESOURCEMANAGERS_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "YARN_USAGE_AGGREGATION_HEALTH",
      "summary" : "DISABLED"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "YARN (MR2 Included)"
  }, {
    "name" : "hdfs",
    "type" : "HDFS",
    "clusterRef" : {
      "clusterName" : "cluster"
    },
    "serviceUrl" : "http://ip-172-31-14-158.ap-southeast-2.compute.internal:7180/cmf/serviceRedirect/hdfs",
    "serviceState" : "STARTED",
    "healthSummary" : "GOOD",
    "healthChecks" : [ {
      "name" : "HDFS_BLOCKS_WITH_CORRUPT_REPLICAS",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_CANARY_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_DATA_NODES_HEALTHY",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_FREE_SPACE_REMAINING",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_HA_NAMENODE_HEALTH",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_MISSING_BLOCKS",
      "summary" : "GOOD"
    }, {
      "name" : "HDFS_UNDER_REPLICATED_BLOCKS",
      "summary" : "GOOD"
    } ],
    "configStalenessStatus" : "FRESH",
    "clientConfigStalenessStatus" : "FRESH",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "displayName" : "HDFS"
  } ]
}<br><code>
</code></br>