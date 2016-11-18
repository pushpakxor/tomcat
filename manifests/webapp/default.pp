# This resource enables the tomcat default root application for an instance.
#
# === Parameters
#
# Document parameters here.
#
# [*instance*]  The instance this application should be installed in (see tomcat::instance). Defaults to $name.
#
# === Variables
#
# === Examples
#
#  tomcat::webapp::examples { 'instance_1': }
#
# === Authors
#
# Sander Bilo <sander@proteon.nl>
#
# === Copyright
#
# Copyright 2013 Proteon.
#
define tomcat::webapp::default ($instance = $name) {
    include tomcat

    tomcat::context { "${instance}:ROOT.xml":
        content  => "<Context path=\"/\" privileged=\"true\" antiResourceLocking=\"false\" docBase=\"/usr/share/tomcat${tomcat::version}-root/default_root\"></Context>",
        context  => 'ROOT',
        instance => $instance,
    }
}
