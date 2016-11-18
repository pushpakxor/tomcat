# This resource installs a tomcat listener.
#
# === Parameters
#
# Document parameters here.
#
# [*instance*]      The instance this definition should be installed in (see tomcat::instance).
# [*class_name*]    The classname of the listener.
# [*attributes*]    The parameters to pass to the class.
# [*ensure*]        Ensure present or absent for this instance (experimental). Defaults to present
#
# === Variables
#
# === Examples
#
#  tomcat::listener { 'instance_1:org.apache.catalina.core.AprLifecycleListener':
#    ensure       => present,
#    instance     => 'instance_1',
#    class_name   => 'org.apache.catalina.core.AprLifecycleListener',
#    attributes   => [{'SSLEngine' => 'on'}]
#  }
#
# === Authors
#
# Sander Bilo <sander@proteon.nl>
#
# === Copyright
#
# Copyright 2013 Proteon.
#
define tomcat::listener (
    $instance,
    $class_name,
    $attributes = [],
    $ensure     = present) {
    include tomcat
    if ($ensure != absent) {
        concat::fragment { "Adding ${class_name} Connector for ${instance}":
            target  => "${tomcat::params::home}/${instance}/tomcat/conf/server-listeners.xml",
            order   => 01,
            content => template('tomcat/listener.xml.erb'),
        }
    }

}
