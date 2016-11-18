define tomcat::jndi::database::hsql (
    $instance,
    $resource_name = 'jdbc/HsqlPool',
    $url           = 'jdbc:hsqldb:data',
    $max_active    = '8',
    $max_idle      = '4',
) {
    tomcat::jndi::resource { "${instance}:${resource_name}":
        instance      => $instance,
        resource_name => $resource_name,
        attributes    => [
            {'auth'              => 'Container' },
            {'username'          => 'sa' },
            {'password'          => '' },
            {'driverClassName'   => 'org.hsqldb.jdbcDriver' },
            {'url'               => $url },
            {'max_active'        => $max_active },
            {'max_idle'          => $max_idle },
        ],
    }

    tomcat::lib::maven { "${instance}:hsqldb-2.3.0":
        lib        => 'hsqldb.jar',
        instance   => $instance,
        groupid    => 'org.hsqldb',
        artifactid => 'hsqldb',
        version    => '2.2.9',
    }
}
