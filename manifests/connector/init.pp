# === Authors
#
# Sander Bilo <sander@proteon.nl>
#
# === Copyright
#
# Copyright 2013 Proteon.
#
define tomcat::connector::init (
    $instance = $name,
    $ensure   = present,) {
    if ($ensure != absent) {
        concat { "${tomcat::params::home}/${instance}/tomcat/conf/connectors.xml":
            owner   => $instance,
            group   => $instance,
            mode    => '0640',
            require => File["${tomcat::params::home}/${instance}/tomcat/conf"],
        }

        concat::fragment { "Adding Default Connector content for ${instance}":
            target  => "${tomcat::params::home}/${instance}/tomcat/conf/connectors.xml",
            order   => 00,
            content => '<?xml version=\'1.0\' encoding=\'utf-8\'?>',
        }

    }
}
