define tomcat::tomee::datasource (
    $instance, 
    $id         = $name, 
    $type       = 'javax.sql.DataSource',
    $properties,
) {
    include tomcat
    concat::fragment { "${instance}:${id}":
        target  => "${tomcat::params::home}/${instance}/tomcat/conf/tomee.xml",
        order   => 03,
        content => "<Resource id=\"${id}\" type=\"${type}\">
    $properties
</Resource>",
        notify  => Tomcat::Service[$instance],
    }
}
