# This resource installs the default servlet into the global web.xml.
#
# === Authors
#
# Sander Bilo <sander@proteon.nl>
#
# === Copyright
#
# Copyright 2013 Proteon.
#
define tomcat::web::servlet::default (
    $instance          = $name,
    $clazz             = 'org.apache.catalina.servlets.DefaultServlet',
    $context_xslt_file = 'null',
    $debug             = 0,
    $input             = 2048,
    $global_xslt_file  = 'null',
    $listings          = false,
    $local_xslt_file   = 'null',
    $servlet_name      = 'default',
    $output            = 2048,
    $readonly          = true,
    $readme_file       = 'null',
    $sendfile_size     = 48,
    $use_accept_ranges = true,
    $mappings          = ['/'],
    $load_on_startup   = 1) {
    tomcat::web::servlet { "${instance}:${servlet_name}":
        instance        => $instance,
        clazz           => $clazz,
        servlet_name    => $servlet_name,
        load_on_startup => $load_on_startup,
        init_params     => [{
                'debug' => $debug
            }
            , {
                'input' => $input
            }
            , {
                'listings' => $listings
            }
            , {
                'output' => $output
            }
            , {
                'readonly' => $readonly
            }
            , {
                'readmeFile' => $readme_file
            }
            , {
                'sendfileSize' => $sendfile_size
            }
            , {
                'useAcceptRanges' => $use_accept_ranges
            }
            , {
                'localXsltFile' => $local_xslt_file
            }
            , {
                'contextXsltFile' => $context_xslt_file
            }
            , {
                'globalXsltFile' => $global_xslt_file
            }
            ],
        mappings        => $mappings,
    }
}
