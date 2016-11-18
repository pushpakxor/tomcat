define tomcat::jndi::database::db2 (
    $database,
    $username,
    $password,
    $driver_lib,
    $instance,
    $resource_name  = 'jdbc/Db2Pool',
    $host           = 'localhost',
    $port           = '50000',
    $driver         = 'com.ibm.db2.jcc.DB2Driver',
    $defer_prepares = false,
    $materialize_input_streams = true,
    $materialize_lob_data      = true,
    $max_active     = '8',
    $max_idle       = '4',
) {
    tomcat::jndi::resource { "${instance}:${resource_name}":
        instance      => $instance,
        resource_name => $resource_name,
        attributes    => [
            {'auth' => 'Container'},
            {'username' => $username},
            {'password' => $password},
            {'driverClassName' => $driver},
            {'url' => "jdbc:db2://${host}:${port}/${database}:deferPrepares=${defer_prepares};fullyMaterializeInputStreams=${materialize_input_streams};fullyMaterializeLobData=${materialize_lob_data};progresssiveLocators=2;progressiveStreaming=2;"},
            {'max_active' => $max_active},
            {'max_idle' => $max_idle},
        ],
    }

    tomcat::lib { "${instance}:db2jcc":
        lib      => 'db2jcc.jar',
        instance => $instance,
        source   => $driver_lib,
    }
}
