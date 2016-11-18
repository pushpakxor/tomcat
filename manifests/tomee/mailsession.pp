define tomcat::tomee::mailsession (
    $instance,
    $id         = $name,
    $type       = 'javax.mail.Session',
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
