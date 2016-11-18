# This resource installs default tomee resources in an instance, don't use it directly.
#
# === Authors
#
# Sander Bilo <sander@proteon.nl>
#
# === Copyright
#
# Copyright 2013 Proteon.
#
define tomcat::tomee::init ($instance = $name, $version, $ensure = present) {

  tomcat::listener { "${name}:org.apache.tomee.catalina.ServerListener":
    instance   => $instance,
    class_name => 'org.apache.tomee.catalina.ServerListener',
    require    => Tomcat::Lib::Maven["${name}:tomee-catalina.jar"]
  }

  file { "${tomcat::params::home}/${instance}/tomcat/apps":
    ensure => directory,
  }
 
  concat { "${tomcat::params::home}/${instance}/tomcat/conf/tomee.xml":
    owner   => $instance,
    group   => $instance,
    mode    => '0640',
    require => File["${tomcat::params::home}/${instance}/tomcat/conf"],
  }

  concat::fragment { "${instance}:tomee.xml:header":
    target  => "${tomcat::params::home}/${instance}/tomcat/conf/tomee.xml",
    order   => 01,
    content => '<?xml version="1.0" encoding="UTF-8"?>
<tomee>
',
  }

  concat::fragment { "${instance}:tomee.xml:footer":
    target  => "${tomcat::params::home}/${instance}/tomcat/conf/tomee.xml",
    order   => 99,
    content => '
</tomee>',
  }

  if($version == '1.6.0') {
    tomcat::tomee::v1_6_0 { $instance: instance => $instance}
  }

  if($version == '1.6.0.2') {
    tomcat::tomee::v1_6_0_2 { $instance: instance => $instance}
  }
  
  if($version == '1.6.0' or $version == '1.6.0.2') {
    file {["${tomcat::params::home}/${instance}/tomcat/bin/tomcat-juli.jar",
           "${tomcat::params::home}/${instance}/tomcat/lib/jaxb-core.jar",
           "${tomcat::params::home}/${instance}/tomcat/lib/quartz-openejb-shade.jar.jar",
           "${tomcat::params::home}/${instance}/tomcat/lib/FastInfoset.jar",
           "${tomcat::params::home}/${instance}/tomcat/lib/el-api.jar",
           "${tomcat::params::home}/${instance}/tomcat/lib/xbean-asm5-shaded.jar",
           "${tomcat::params::home}/${instance}/tomcat/lib/tomcat-el-api.jar"]:
      ensure => absent,
      notify     => Service[$instance],
    }
  }
  
  if($version == '1.7.0') {
    file {["${tomcat::params::home}/${instance}/tomcat/lib/quartz.jar",
           "${tomcat::params::home}/${instance}/tomcat/lib/gson.jar",
           "${tomcat::params::home}/${instance}/tomcat/lib/serializer.jar",
           "${tomcat::params::home}/${instance}/tomcat/lib/xalan.jar",
           "${tomcat::params::home}/${instance}/tomcat/lib/xercesImpl.jar",
           "${tomcat::params::home}/${instance}/tomcat/lib/xml-apis.jar",
           "${tomcat::params::home}/${instance}/tomcat/lib/xbean-asm4-shaded.jar"]:
      ensure => absent,
      notify     => Service[$instance],
    }

    maven { "${tomcat::params::home}/${instance}/tomcat/bin/tomcat-juli.jar":
        groupid    => 'org.apache.openejb',
        artifactid => 'tomee-juli',
        version    => $version,
        notify     => Service[$instance],
    }
    tomcat::tomee::v1_7_0 { $instance: instance => $instance}
  }
}