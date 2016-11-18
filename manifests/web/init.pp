# This resource installs default servlet resources in an instance, don't use it directly.
#
# === Authors
#
# Sander Bilo <sander@proteon.nl>
#
# === Copyright
#
# Copyright 2013 Proteon.
#
define tomcat::web::init (
    $instance          = $name,
    $tomcat_version    = undef,
    $session_timeout   = 30,
    $welcome_files     = ['index.html', 'index.htm', 'index.jsp'],
    $ensure            = present,) {
    if ($ensure != absent) {
        include concat::setup
	
        concat { "${tomcat::params::home}/${instance}/tomcat/conf/web.xml":
            owner   => $instance,
            group   => $instance,
            mode    => '0640',
            require => File["${tomcat::params::home}/${instance}/tomcat/conf"],
        }

        concat::fragment { "Adding Default Serlvet web.xml top content for ${instance}":
            target  => "${tomcat::params::home}/${instance}/tomcat/conf/web.xml",
            order   => 00,
            content => versioncmp($tomcat_version,'7.0.52') ? {
                '-1' 	=> '<?xml version=\'1.0\' encoding=\'utf-8\'?>
<!DOCTYPE web-app [
    <!ENTITY mime-mappings SYSTEM "web-mime-mappings.xml">
]>
<web-app xmlns="http://java.sun.com/xml/ns/javaee"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://java.sun.com/xml/ns/javaee
    http://java.sun.com/xml/ns/javaee/web-app_3_0.xsd"
    version="3.0">
',
                default => '<?xml version=\'1.0\' encoding=\'utf-8\'?>
<web-app xmlns="http://java.sun.com/xml/ns/javaee"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://java.sun.com/xml/ns/javaee
    http://java.sun.com/xml/ns/javaee/web-app_3_0.xsd"
    version="3.0">
',
	    }
        }

        concat::fragment { "Adding Default Serlvet web.xml timeout config content for ${instance}":
            target  => "${tomcat::params::home}/${instance}/tomcat/conf/web.xml",
            order   => 96,
            content => "
    <session-config>
        <session-timeout>${session_timeout}</session-timeout>
    </session-config>
",
        }

        file { "${tomcat::params::home}/${instance}/tomcat/conf/web-mime-mappings.xml":
            content => template('tomcat/web-mime-mappings.xml.erb'),
            owner   => $instance,
            group   => $instance,
        }

        concat::fragment { "Adding Default Serlvet web.xml file mime-mappings config content for ${instance}":
            target  => "${tomcat::params::home}/${instance}/tomcat/conf/web.xml",
            order   => 97,
            content => versioncmp($tomcat_version,'7.0.52') ? {
                '-1'    => '
    &mime-mappings;
',
                default => template('tomcat/web-mime-mappings.xml.erb'),
          }
        }

        concat::fragment { "Adding Default Serlvet web.xml welcome file config content for ${instance}":
            target  => "${tomcat::params::home}/${instance}/tomcat/conf/web.xml",
            order   => 98,
            content => inline_template('
    <welcome-file-list>
<% @welcome_files.each do |val| -%>
        <welcome-file><%= val %></welcome-file>
    <% end -%></welcome-file-list>'),
        }

        concat::fragment { "Adding Default Serlvet web.xml bottom content for ${instance}":
            target  => "${tomcat::params::home}/${instance}/tomcat/conf/web.xml",
            order   => 99,
            content => '
</web-app>',
        }
    }
}
