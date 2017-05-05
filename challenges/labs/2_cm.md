<br>Copy cloudera manager repo file</br>
<br><code>sudo cp /tmp/cloudera-manager.repo /etc/yum.repos.d/cloudera-manager.repo</code></br>
<br>List the command and output for ls /etc/yum.repos.d</br>
<br><code>CentOS-Base.repo  CentOS-CR.repo  CentOS-Debuginfo.repo  CentOS-fasttrack.repo  CentOS-Media.repo  CentOS-Sources.repo  CentOS-Vault.repo  cloudera-manager.repo
</code></br>
<br>Install the JDK from a repository</br>
<br><code>sudo yum install oracle-j2sdk1.7</code></br>
<br>Install the Cloudera Manager Server Packages</br>
<br><code>sudo yum install cloudera-manager-agent cloudera-manager-daemons</code></br>
<br><code>sudo yum install cloudera-manager-server</code></br>
<br><code>
Installed:
  cloudera-manager-agent.x86_64 0:5.11.0-1.cm5110.p0.101.el7                        cloudera-manager-daemons.x86_64 0:5.11.0-1.cm5110.p0.101.el7

Dependency Installed:
  GeoIP.x86_64 0:1.5.0-11.el7                         MySQL-python.x86_64 0:1.2.5-1.el7                              apr.x86_64 0:1.4.8-3.el7
  apr-util.x86_64 0:1.5.2-6.el7                       at.x86_64 0:3.1.13-22.el7                                      avahi-libs.x86_64 0:0.6.31-17.el7
  bc.x86_64 0:1.06.95-13.el7                          bind-libs.x86_64 32:9.9.4-38.el7_3.3                           bind-utils.x86_64 32:9.9.4-38.el7_3.3
  cups-client.x86_64 1:1.6.3-26.el7                   cups-libs.x86_64 1:1.6.3-26.el7                                cyrus-sasl-gssapi.x86_64 0:2.1.26-20.el7_2
  cyrus-sasl-plain.x86_64 0:2.1.26-20.el7_2           ed.x86_64 0:1.9-4.el7                                          fuse.x86_64 0:2.9.2-7.el7
  fuse-libs.x86_64 0:2.9.2-7.el7                      httpd.x86_64 0:2.4.6-45.el7.centos.4                           httpd-tools.x86_64 0:2.4.6-45.el7.centos.4
  keyutils-libs-devel.x86_64 0:1.5.8-3.el7            krb5-devel.x86_64 0:1.14.1-27.el7_3                            libcom_err-devel.x86_64 0:1.42.9-9.el7
  libkadm5.x86_64 0:1.14.1-27.el7_3                   libselinux-devel.x86_64 0:2.5-6.el7                            libsepol-devel.x86_64 0:2.5-6.el7
  libverto-devel.x86_64 0:0.2.5-4.el7                 libxslt.x86_64 0:1.1.28-5.el7                                  m4.x86_64 0:1.4.16-10.el7
  mailcap.noarch 0:2.1.41-2.el7                       mailx.x86_64 0:12.5-12.el7_0                                   mod_ssl.x86_64 1:2.4.6-45.el7.centos.4
  openssl-devel.x86_64 1:1.0.1e-60.el7_3.1            patch.x86_64 0:2.7.1-8.el7                                     pcre-devel.x86_64 0:8.32-15.el7_2.1
  postgresql-libs.x86_64 0:9.2.18-1.el7               psmisc.x86_64 0:22.20-11.el7                                   python-psycopg2.x86_64 0:2.5.1-3.el7
  redhat-lsb-core.x86_64 0:4.1-27.el7.centos.1        redhat-lsb-submod-security.x86_64 0:4.1-27.el7.centos.1        spax.x86_64 0:1.5.2-13.el7
  time.x86_64 0:1.7-45.el7                            zlib-devel.x86_64 0:1.2.7-17.el7

Updated:
  systemd.x86_64 0:219-30.el7_3.8

Dependency Updated:
  bind-libs-lite.x86_64 32:9.9.4-38.el7_3.3    bind-license.noarch 32:9.9.4-38.el7_3.3    e2fsprogs.x86_64 0:1.42.9-9.el7      e2fsprogs-libs.x86_64 0:1.42.9-9.el7
  krb5-libs.x86_64 0:1.14.1-27.el7_3           libcom_err.x86_64 0:1.42.9-9.el7           libgudev1.x86_64 0:219-30.el7_3.8    libselinux.x86_64 0:2.5-6.el7
  libselinux-python.x86_64 0:2.5-6.el7         libselinux-utils.x86_64 0:2.5-6.el7        libsepol.x86_64 0:2.5-6.el7          libss.x86_64 0:1.42.9-9.el7
  openssl.x86_64 1:1.0.1e-60.el7_3.1           openssl-libs.x86_64 1:1.0.1e-60.el7_3.1    pcre.x86_64 0:8.32-15.el7_2.1        systemd-libs.x86_64 0:219-30.el7_3.8
  systemd-sysv.x86_64 0:219-30.el7_3.8         zlib.x86_64 0:1.2.7-17.el7

Complete!

</code></br>
<br>Prepare databases - Use the scm_prepare_database.sh script</br>
<br><code>
/usr/share/cmf/schema/scm_prepare_database.sh mysql rman rman rman_password
/usr/share/cmf/schema/scm_prepare_database.sh mysql metastore hive hive_password
/usr/share/cmf/schema/scm_prepare_database.sh mysql sentry sentry sentry_password
/usr/share/cmf/schema/scm_prepare_database.sh mysql scm scm scm_password
/usr/share/cmf/schema/scm_prepare_database.sh mysql oozie oozie oozie
/usr/share/cmf/schema/scm_prepare_database.sh mysql hue hue huepassword
</code></br>