# Configuration snippets may be placed in this directory as well
includedir /etc/krb5.conf.d/

[logging]
 default = FILE:/var/log/krb5libs.log
 kdc = FILE:/var/log/krb5kdc.log
 admin_server = FILE:/var/log/kadmind.log

[libdefaults]
 default_realm = HADOOP.COM
 dns_lookup_realm = false
 ticket_lifetime = 24h
 renew_lifetime = 7d
 forwardable = true
 rdns = false
# default_realm = EXAMPLE.COM
 default_ccache_name = KEYRING:persistent:%{uid}
 default_tgs_enctypes = arcfour-hmac
 default_tkt_enctypes = arcfour-hmac

[realms]
 HADOOP.COM = {
  kdc = ip-172-31-0-214.ap-southeast-2.compute.internal
  admin_server = ip-172-31-0-214.ap-southeast-2.compute.internal
 }

[domain_realm]
 .example.com = HADOOP.COM
 example.com = HADOOP.COM
