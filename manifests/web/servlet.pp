# This resource installs a java servlet into the global web.xml.
#
# === Parameters
#
# [*instance*]          The instance this servlet should be defined in (see tomcat::instance).
# [*name*]              The name of the servlet.
# [*class*]             The fully qualified class name (including package).
# [*init_params*]       List of init params for the servlet.
# [*load_on_startup*]   Value determining when to load the servlet (sequence).
#
# === Variables
#
# === Examples
#
#  tomcat::servlet { 'ssi':
#   instance        => 'instance_1',
#   name            => 'ssi',
#   class           => 'org.apache.catalina.ssi.SSIServlet'
#   init_params     => [{'buffered' => 1},{'debug' => 0}],
#   load_on_startup => 7,
#  }
# === Authors
#
# Sander Bilo <sander@proteon.nl>
#
# === Copyright
#
# Copyright 2013 Proteon.
#
define tomcat::web::servlet(
    $instance,
    $servlet_name,
    $clazz,
    $load_on_startup,
    $init_params = [],
    $mappings    = [],
) {

    concat::fragment { "Adding ${name} Servlet configuration for ${instance}":
        target  => "${tomcat::params::home}/${instance}/tomcat/conf/web.xml",
        order   => $load_on_startup,
        content => template('tomcat/web-servlet.xml.erb'),
    }
}
