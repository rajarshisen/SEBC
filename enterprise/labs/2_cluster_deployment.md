<br><code>
{
  "timestamp" : "2017-05-04T01:54:27.150Z",
  "clusters" : [ {
    "name" : "rajarshisen",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "242221056"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "242221056"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "3433247539"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "577"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "54.206.45.12"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "hive_password"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-21cf7986a5c949b8b4bdeafb7c0d3c99",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "e56f83ab-73fb-45d3-91a8-9a3439c09c22"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-4f2a0fb7788f098040a272c521ca92b8",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "1923fa69-e050-433a-b8dc-9b80c0e5ffac"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-4f9ad75a26caaf776b61e6410d0f9226",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-b10e3afedb4d254d78f9ec000f763661",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "f8a0fe3e-f9d5-4038-ab33-0334b8359984"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-4f9ad75a26caaf776b61e6410d0f9226",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9kredlqptm46yikpilzbrd7kz"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-4f9ad75a26caaf776b61e6410d0f9226",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7yc6n3dyll33xn4nmfutm81pw"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "SERVER",
          "items" : [ {
            "name" : "zookeeper_server_java_heapsize",
            "value" : "242221056"
          } ]
        } ],
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-21cf7986a5c949b8b4bdeafb7c0d3c99",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "e56f83ab-73fb-45d3-91a8-9a3439c09c22"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bbtsh1dsxtmm1l2jcngygkibp"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-4f2a0fb7788f098040a272c521ca92b8",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "1923fa69-e050-433a-b8dc-9b80c0e5ffac"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2dvqme0p9sm0b803gxl8wpgqh"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-4f9ad75a26caaf776b61e6410d0f9226",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dg7f3rpn1waha9xpl52nc3u4b"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "database_host",
          "value" : "54.206.45.12"
        }, {
          "name" : "database_password",
          "value" : "huepassword"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-HTTPFS-4f9ad75a26caaf776b61e6410d0f9226"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-4f9ad75a26caaf776b61e6410d0f9226",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5m101cfwsrye417mdqfb978p2"
          }, {
            "name" : "secret_key",
            "value" : "gaeROJSEgD2TAUfFsUg4BKP8R1jsH3"
          } ]
        }
      } ],
      "displayName" : "Hue"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "54.206.45.12"
          }, {
            "name" : "oozie_database_password",
            "value" : "oozie"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          }, {
            "name" : "oozie_java_heapsize",
            "value" : "242221056"
          }, {
            "name" : "oozie_plugins_list",
            "value" : "org.apache.oozie.service.ZKLocksService,org.apache.oozie.service.ZKXLogStreamingService,org.apache.oozie.service.ZKJobsConcurrencyService,org.apache.oozie.service.ZKUUIDService"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "oozie_load_balancer",
          "value" : ""
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-21cf7986a5c949b8b4bdeafb7c0d3c99",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "e56f83ab-73fb-45d3-91a8-9a3439c09c22"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5pybrsqft9zsbe16lq52a7ett"
          } ]
        }
      }, {
        "name" : "oozie-OOZIE_SERVER-4f9ad75a26caaf776b61e6410d0f9226",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2fx8hcys51mzb4kkbjrmags3r"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "6"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "1"
          } ]
        }, {
          "roleType" : "JOBHISTORY",
          "items" : [ {
            "name" : "mr2_jobhistory_java_heapsize",
            "value" : "242221056"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "rm_cpu_shares",
            "value" : "1800"
          }, {
            "name" : "rm_io_weight",
            "value" : "900"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "3"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "3040"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "resource_manager_java_heapsize",
            "value" : "242221056"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "4273"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "3"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "90"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "false"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "false"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "pPDPRxgNvEt24De4vqviuPq1MOg80L"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-JOBHISTORY-4f9ad75a26caaf776b61e6410d0f9226",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9wyhwt21nyz47ohktsn0jp1gj"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-21cf7986a5c949b8b4bdeafb7c0d3c99",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "e56f83ab-73fb-45d3-91a8-9a3439c09c22"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8by9nkrpyul7nwgfxzk5o2ns5"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-4f2a0fb7788f098040a272c521ca92b8",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "1923fa69-e050-433a-b8dc-9b80c0e5ffac"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6vwfspkdlvrpm01e132kgm3dt"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-b10e3afedb4d254d78f9ec000f763661",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "f8a0fe3e-f9d5-4038-ab33-0334b8359984"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "c0jko34kvbqekjefg2s8yo7c8"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-4f9ad75a26caaf776b61e6410d0f9226",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "90"
          }, {
            "name" : "role_jceks_password",
            "value" : "djsj0yvuqrnfxhses2wi3ehhc"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "BALANCER",
          "items" : [ {
            "name" : "balancer_java_heapsize",
            "value" : "242221056"
          } ]
        }, {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "1073741824"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/dfs/dn,/dfs/rajarshisen"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "3219866009"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "4294967296"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "200"
          }, {
            "name" : "rm_io_weight",
            "value" : "100"
          } ]
        }, {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }, {
          "roleType" : "JOURNALNODE",
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/dfs/jne"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          }, {
            "name" : "namenode_java_heapsize",
            "value" : "242221056"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/dfs/snn"
          }, {
            "name" : "secondary_namenode_java_heapsize",
            "value" : "242221056"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "03lOxzd84vN9dAoEtpMJuvFaIqseAC"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "QwVoo0UmLkJxOLT0rvNfYXkgW3N0UP"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "TNhXe4A9cWrJJaz9pDvx4oHZBh5zoq"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "10"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-4f9ad75a26caaf776b61e6410d0f9226",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-21cf7986a5c949b8b4bdeafb7c0d3c99",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "e56f83ab-73fb-45d3-91a8-9a3439c09c22"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dcqdxhvfwr2sl3slotf910xr"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-4f2a0fb7788f098040a272c521ca92b8",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "1923fa69-e050-433a-b8dc-9b80c0e5ffac"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6p0xseaymra0barl9x28l8zyk"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-b10e3afedb4d254d78f9ec000f763661",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "f8a0fe3e-f9d5-4038-ab33-0334b8359984"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5w4u3p50hhd5zpilecjfwxw3z"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-21cf7986a5c949b8b4bdeafb7c0d3c99",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "e56f83ab-73fb-45d3-91a8-9a3439c09c22"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5kiu47okpodwuy2p7z6kdx8rf"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-4f9ad75a26caaf776b61e6410d0f9226",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "andicq1fupdmznm49mgi99sw2"
          } ]
        }
      }, {
        "name" : "hdfs-HTTPFS-4f9ad75a26caaf776b61e6410d0f9226",
        "type" : "HTTPFS",
        "hostRef" : {
          "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "796d9d78x833qghm28hek4tkt"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-21cf7986a5c949b8b4bdeafb7c0d3c99",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "e56f83ab-73fb-45d3-91a8-9a3439c09c22"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dod96nrnniyj13m67xce7d0yq"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-4f2a0fb7788f098040a272c521ca92b8",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "1923fa69-e050-433a-b8dc-9b80c0e5ffac"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "cujdmqidwdwb76037k5bjnujk"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-b10e3afedb4d254d78f9ec000f763661",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "f8a0fe3e-f9d5-4038-ab33-0334b8359984"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "acq4lopq2zqgaj2yx18hg6h7e"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-21cf7986a5c949b8b4bdeafb7c0d3c99",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "e56f83ab-73fb-45d3-91a8-9a3439c09c22"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "nameserviceHA"
          }, {
            "name" : "dfs_name_dir_list",
            "value" : "/dfs/jnn"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "nameserviceHA"
          }, {
            "name" : "namenode_id",
            "value" : "97"
          }, {
            "name" : "role_jceks_password",
            "value" : "5x1wj94cuud96j5wds3v0ys38"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-4f9ad75a26caaf776b61e6410d0f9226",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "nameserviceHA"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "nameserviceHA"
          }, {
            "name" : "namenode_id",
            "value" : "92"
          }, {
            "name" : "role_jceks_password",
            "value" : "dhncayeh5sf04bfpjhrsezv66"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e",
    "ipAddress" : "172.31.0.214",
    "hostname" : "ip-172-31-0-214.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "893f6e71-4b48-4a52-89ed-9fefd39c6c9f",
    "ipAddress" : "172.31.10.132",
    "hostname" : "ip-172-31-10-132.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "e56f83ab-73fb-45d3-91a8-9a3439c09c22",
    "ipAddress" : "172.31.12.151",
    "hostname" : "ip-172-31-12-151.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "1923fa69-e050-433a-b8dc-9b80c0e5ffac",
    "ipAddress" : "172.31.5.57",
    "hostname" : "ip-172-31-5-57.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "f8a0fe3e-f9d5-4038-ab33-0334b8359984",
    "ipAddress" : "172.31.6.180",
    "hostname" : "ip-172-31-6-180.ap-southeast-2.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-4f9ad75a26caaf776b61e6410d0f9226",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "2c947c9884e26c06a51cbf3f8784f4dc735a98d3ff1a6482cafd4b233ee5a80a",
    "pwSalt" : -932331878581361901,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-4f9ad75a26caaf776b61e6410d0f9226",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "d8e2e0441cb25f5b44bc8f560d51dd3587d96be834f7c8b14903daf26695e91d",
    "pwSalt" : -6512469028086704124,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-4f9ad75a26caaf776b61e6410d0f9226",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "57a28c7e4c770620a03776a3b4169d07da0f2348c8e392eda6829ff469b97d91",
    "pwSalt" : -3124036481893671478,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-4f9ad75a26caaf776b61e6410d0f9226",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "7a67386caaa35d17cb956cf9b980f48a6304f0872a41e42089d1d06c7d9c1cb2",
    "pwSalt" : 3717858655602437972,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ],
    "pwHash" : "903c7b73b4af370ea674ec86ab232e9966afac218829444ef92af7d8acc6ec74",
    "pwSalt" : -3399505352267352513,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "5c7c1268ca778b6f87bf2a776093a00f480db240d4ec5a6c2f65a46c289bba41",
    "pwSalt" : 3356255281542278342,
    "pwLogin" : true
  }, {
    "name" : "rajarshisen",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "94516163d613340b3afff54a770a2401e61713053930a8a4ea452fa34cc1393c",
    "pwSalt" : -5858100793596321623,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.11.0",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20170412-1255",
    "gitHash" : "70cb1442626406432a6e7af5bdf206a384ca3f98",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "54.206.45.12"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "rman_password"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ALERTPUBLISHER-4f9ad75a26caaf776b61e6410d0f9226",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "bt2zysmha6j5q5wkj6s2hnpnq"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-4f9ad75a26caaf776b61e6410d0f9226",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "6u3b1a9ov00mc9lqmpxt7wdi1"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-4f9ad75a26caaf776b61e6410d0f9226",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "47724kvspeahvbj5tmzrr4pka"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-4f9ad75a26caaf776b61e6410d0f9226",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "r3qamqr1a8usi9fn1zv2qaah"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-4f9ad75a26caaf776b61e6410d0f9226",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "da2bfa1f-8087-4fe2-920f-426c6eeacd7e"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "7rug9tdktli1qrh4afw7mgpz8"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/26/2012 4:10"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/5.9.1/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,http://archive.cloudera.com/kudu/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    } ]
  }
}

</code></br>