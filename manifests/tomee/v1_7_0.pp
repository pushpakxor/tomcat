define tomcat::tomee::v1_7_0 ($instance = $name) {
  include tomcat
  
  $activemq_version     = '5.10.0'
  $cxf_version          = '2.6.14'
  $openejb_version      = '4.7.0'
  $openwebbeans_version = '1.2.6'
  $tomee_version        = '1.7.0'
  $xbean_version        = '3.18'

  Tomcat::Lib::Maven { instance => $instance }

  tomcat::lib::maven { "${name}:activemq-broker.jar":
    groupid    => 'org.apache.activemq',
    artifactid => 'activemq-broker',
    version    => $activemq_version,
    lib        => 'activemq-broker.jar',
  }

  tomcat::lib::maven { "${name}:activemq-client.jar":
    groupid    => 'org.apache.activemq',
    artifactid => 'activemq-client',
    version    => $activemq_version,
    lib        => 'activemq-client.jar',
  }

  tomcat::lib::maven { "${name}:activemq-jdbc-store.jar":
    groupid    => 'org.apache.activemq',
    artifactid => 'activemq-jdbc-store',
    version    => $activemq_version,
    lib        => 'activemq-jdbc-store.jar',
  }
  
  tomcat::lib::maven { "${name}:activemq-kahadb-store.jar":
    groupid    => 'org.apache.activemq',
    artifactid => 'activemq-kahadb-store',
    version    => $activemq_version,
    lib        => 'activemq-kahadb-store.jar',
  }
  
  tomcat::lib::maven { "${name}:activemq-openwire-legacy.jar":
    groupid    => 'org.apache.activemq',
    artifactid => 'activemq-openwire-legacy',
    version    => $activemq_version,
    lib        => 'activemq-openwire-legacy.jar',
  }

  tomcat::lib::maven { "${name}:activemq-protobuf.jar":
    groupid    => 'org.apache.activemq.protobuf',
    artifactid => 'activemq-protobuf',
    version    => '1.1',
    lib        => 'activemq-protobuf.jar',
  }
  
  tomcat::lib::maven { "${name}:activemq-ra.jar":
    groupid    => 'org.apache.activemq',
    artifactid => 'activemq-ra',
    version    => $activemq_version,
    lib        => 'activemq-ra.jar',
  }
  
  tomcat::lib::maven { "${name}:bval-core.jar":
    groupid    => 'org.apache.bval',
    artifactid => 'bval-core',
    version    => '0.5',
    lib        => 'bval-core.jar',
  }
  
  tomcat::lib::maven { "${name}:bval-jsr303.jar":
    groupid    => 'org.apache.bval',
    artifactid => 'bval-jsr303',
    version    => '0.5',
    lib        => 'bval-jsr303.jar',
  }

  tomcat::lib::maven { "${name}:commons-beanutils-core.jar":
    groupid    => 'commons-beanutils',
    artifactid => 'commons-beanutils-core',
    version    => '1.8.3',
    lib        => 'commons-beanutils-core.jar',
  }

  tomcat::lib::maven { "${name}:commons-cli.jar":
    groupid    => 'commons-cli',
    artifactid => 'commons-cli',
    version    => '1.2',
    lib        => 'commons-cli.jar',
  }
  
  tomcat::lib::maven { "${name}:commons-codec.jar":
    groupid    => 'commons-codec',
    artifactid => 'commons-codec',
    lib        => 'commons-codec.jar',
    version    => '1.9',
  }

  tomcat::lib::maven { "${name}:commons-collections.jar":
    groupid    => 'commons-collections',
    artifactid => 'commons-collections',
    version    => '3.2.1',
    lib        => 'commons-collections.jar',
  }

  tomcat::lib::maven { "${name}:commons-dbcp.jar":
    groupid    => 'commons-dbcp',
    artifactid => 'commons-dbcp',
    version    => '1.4',
    lib        => 'commons-dbcp.jar',
  }
  
  tomcat::lib::maven { "${name}:commons-digester.jar":
    groupid    => 'commons-digester',
    artifactid => 'commons-digester',
    lib        => 'commons-digester.jar',
    version    => '1.8',
  }
  
  tomcat::lib::maven { "${name}:commons-lang.jar":
    groupid    => 'commons-lang',
    artifactid => 'commons-lang',
    version    => '2.6',
    lib        => 'commons-lang.jar',
  }

  tomcat::lib::maven { "${name}:commons-lang3.jar":
    groupid    => 'org.apache.commons',
    artifactid => 'commons-lang3',
    version    => '3.3.2',
    lib        => 'commons-lang3.jar',
  }
  
  tomcat::lib::maven { "${name}:commons-logging.jar":
    groupid    => 'commons-logging',
    artifactid => 'commons-logging',
    version    => '1.1.1',
    lib        => 'commons-logging.jar',
  }
  
  tomcat::lib::maven { "${name}:cxf-api.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-api',
    version    => $cxf_version,
    lib        => 'cxf-api.jar',
  }
  
  tomcat::lib::maven { "${name}:cxf-rt-bindings-soap.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-bindings-soap',
    version    => $cxf_version,
    lib        => 'cxf-rt-bindings-soap.jar',
  }
  
  tomcat::lib::maven { "${name}:cxf-rt-bindings-xml.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-bindings-xml',
    version    => $cxf_version,
    lib        => 'cxf-rt-bindings-xml.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-core.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-core',
    version    => $cxf_version,
    lib        => 'cxf-rt-core.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-databinding-jaxb.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-databinding-jaxb',
    version    => $cxf_version,
    lib        => 'cxf-rt-databinding-jaxb.jar',
  }
  
  tomcat::lib::maven { "${name}:cxf-rt-frontend-jaxrs.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-frontend-jaxrs',
    version    => $cxf_version,
    lib        => 'cxf-rt-frontend-jaxrs.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-frontend-jaxws.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-frontend-jaxws',
    version    => $cxf_version,
    lib        => 'cxf-rt-frontend-jaxws.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-frontend-simple.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-frontend-simple',
    version    => $cxf_version,
    lib        => 'cxf-rt-frontend-simple.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-management.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-management',
    version    => $cxf_version,
    lib        => 'cxf-rt-management.jar',
  }
  
  tomcat::lib::maven { "${name}:cxf-rt-rs-extension-providers.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-rs-extension-providers',
    version    => $cxf_version,
    lib        => 'cxf-rt-rs-extension-providers.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-rs-extension-search.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-rs-extension-search',
    version    => $cxf_version,
    lib        => 'cxf-rt-rs-extension-search.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-rs-security-cors.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-rs-security-cors',
    version    => $cxf_version,
    lib        => 'cxf-rt-rs-security-cors.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-rs-security-oauth2.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-rs-security-oauth2',
    version    => $cxf_version,
    lib        => 'cxf-rt-rs-security-oauth2.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-transports-http.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-transports-http',
    version    => $cxf_version,
    lib        => 'cxf-rt-transports-http.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-ws-addr.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-ws-addr',
    version    => $cxf_version,
    lib        => 'cxf-rt-ws-addr.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-ws-policy.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-ws-policy',
    version    => $cxf_version,
    lib        => 'cxf-rt-ws-policy.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-ws-security.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-ws-security',
    version    => $cxf_version,
    lib        => 'cxf-rt-ws-security.jar',
  }
  
  tomcat::lib::maven { "${name}:ecj.jar":
    groupid    => 'org.eclipse.jdt.core.compiler',
    artifactid => 'ecj',
    lib        => 'ecj.jar',
    version    => '4.4',
  }
  
  tomcat::lib::maven { "${name}:FastInfoset.jar":
    groupid    => 'com.sun.xml.fastinfoset',
    artifactid => 'FastInfoset',
    lib        => 'FastInfoset.jar',
    version    => '1.2.12',
  }

  tomcat::lib::maven { "${name}:geronimo-connector.jar":
    groupid    => 'org.apache.geronimo.components',
    artifactid => 'geronimo-connector',
    version    => '3.1.1',
    lib        => 'geronimo-connector.jar',
  }

  tomcat::lib::maven { "${name}:geronimo-javamail_1.4_mail.jar":
    groupid    => 'org.apache.geronimo.javamail',
    artifactid => 'geronimo-javamail_1.4_mail',
    version    => '1.8.3',
    lib        => 'geronimo-javamail_1.4_mail.jar',
  }

  tomcat::lib::maven { "${name}:geronimo-transaction.jar":
    groupid    => 'org.apache.geronimo.components',
    artifactid => 'geronimo-transaction',
    version    => '3.1.1',
    lib        => 'geronimo-transaction.jar',
  }

  tomcat::lib::maven { "${name}:hawtbuf.jar":
    groupid    => 'org.fusesource.hawtbuf',
    artifactid => 'hawtbuf',
    version    => '1.10',
    lib        => 'hawtbuf.jar',
  }

  tomcat::lib::maven { "${name}:howl.jar":
    groupid    => 'org.objectweb.howl',
    artifactid => 'howl',
    version    => '1.0.1-1',
    lib        => 'howl.jar',
  }

  tomcat::lib::maven { "${name}:hsqldb.jar":
    groupid    => 'org.hsqldb',
    artifactid => 'hsqldb',
    version    => '2.3.2',
    lib        => 'hsqldb.jar',
  }

  tomcat::lib::maven { "${name}:istack-commons-runtime.jar":
    groupid    => 'com.sun.istack',
    artifactid => 'istack-commons-runtime',
    version    => '2.16',
    lib        => 'istack-commons-runtime.jar',
  }

  tomcat::lib::maven { "${name}:jansi.jar":
    groupid    => 'org.fusesource.jansi',
    artifactid => 'jansi',
    version    => '1.8',
    lib        => 'jansi.jar',
  }

  tomcat::lib::maven { "${name}:javaee-api-tomcat.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'javaee-api',
    version    => '6.0-6',
    lib        => 'javaee-api-tomcat.jar',
    classifier => 'tomcat',
  }
  
  tomcat::lib::maven { "${name}:jaxb-core.jar":
    groupid    => 'com.sun.xml.bind',
    artifactid => 'jaxb-core',
    version    => '2.2.7',
    lib        => 'jaxb-core.jar',
  }

  tomcat::lib::maven { "${name}:jaxb-impl.jar":
    groupid    => 'com.sun.xml.bind',
    artifactid => 'jaxb-impl',
    version    => '2.2.7',
    lib        => 'jaxb-impl.jar',
  }

  tomcat::lib::maven { "${name}:jettison.jar":
    groupid    => 'org.codehaus.jettison',
    artifactid => 'jettison',
    version    => '1.3.4',
    lib        => 'jettison.jar',
  }

  tomcat::lib::maven { "${name}:joda-time.jar":
    groupid    => 'joda-time',
    artifactid => 'joda-time',
    version    => '1.6.2',
    lib        => 'joda-time.jar',
  }
  
  tomcat::lib::maven { "${name}:mbean-annotation-api.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'mbean-annotation-api',
    version    => $openejb_version,
    lib        => 'mbean-annotation-api.jar',
  }
  
  tomcat::lib::maven { "${name}:mimepull.jar":
    groupid    => 'org.jvnet.mimepull',
    artifactid => 'mimepull',
    version    => '1.7',
    lib        => 'mimepull.jar',
  }
  
  tomcat::lib::maven { "${name}:myfaces-api.jar":
    groupid    => 'org.apache.myfaces.core',
    artifactid => 'myfaces-api',
    lib        => 'myfaces-api.jar',
    version    => '2.1.15',
  }

  tomcat::lib::maven { "${name}:myfaces-impl.jar":
    groupid    => 'org.apache.myfaces.core',
    artifactid => 'myfaces-impl',
    lib        => 'myfaces-impl.jar',
    version    => '2.1.15',
  }

  tomcat::lib::maven { "${name}:neethi.jar":
    groupid    => 'org.apache.neethi',
    artifactid => 'neethi',
    version    => '3.0.3',
    lib        => 'neethi.jar',
  }

  tomcat::lib::maven { "${name}:openejb-api.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-api',
    version    => $openejb_version,
    lib        => 'openejb-api.jar',
  }
  
  tomcat::lib::maven { "${name}:openejb-client.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-client',
    version    => $openejb_version,
    lib        => 'openejb-client.jar',
  }

  tomcat::lib::maven { "${name}:openejb-core.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-core',
    version    => $openejb_version,
    lib        => 'openejb-core.jar',
  }
  
  tomcat::lib::maven { "${name}:openejb-cxf.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-cxf',
    version    => $openejb_version,
    lib        => 'openejb-cxf.jar',
  }

  tomcat::lib::maven { "${name}:openejb-cxf-rs.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-cxf-rs',
    version    => $openejb_version,
    lib        => 'openejb-cxf-rs.jar',
  }

  tomcat::lib::maven { "${name}:openejb-cxf-transport.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-cxf-transport',
    version    => $openejb_version,
    lib        => 'openejb-cxf-transport.jar',
  }

  tomcat::lib::maven { "${name}:openejb-ejbd.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-ejbd',
    version    => $openejb_version,
    lib        => 'openejb-ejbd.jar',
  }
  
  tomcat::lib::maven { "${name}:openejb-hsql.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-hsql',
    version    => $openejb_version,
    lib        => 'openejb-hsql.jar',
  }
  
  tomcat::lib::maven { "${name}:openejb-http.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-http',
    version    => $openejb_version,
    lib        => 'openejb-http.jar',
  }

  tomcat::lib::maven { "${name}:openejb-javaagent.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-javaagent',
    version    => $openejb_version,
    lib        => 'openejb-javaagent.jar',
  }

  tomcat::lib::maven { "${name}:openejb-jee.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-jee',
    version    => $openejb_version,
    lib        => 'openejb-jee.jar',
  }

  tomcat::lib::maven { "${name}:openejb-jee-accessors.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-jee-accessors',
    version    => $openejb_version,
    lib        => 'openejb-jee-accessors.jar',
  }

  tomcat::lib::maven { "${name}:openejb-jpa-integration.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-jpa-integration',
    version    => $openejb_version,
    lib        => 'openejb-jpa-integration.jar',
  }

  tomcat::lib::maven { "${name}:openejb-jstl.jar":
    groupid    => 'org.apache.openejb.patch',
    artifactid => 'openejb-jstl',
    version    => '1.2',
    lib        => 'openejb-jstl.jar',
  }
  
  tomcat::lib::maven { "${name}:openejb-loader.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-loader',
    version    => $openejb_version,
    lib        => 'openejb-loader.jar',
  }

  tomcat::lib::maven { "${name}:openejb-rest.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-rest',
    version    => $openejb_version,
    lib        => 'openejb-rest.jar',
  }

  tomcat::lib::maven { "${name}:openejb-server.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-server',
    version    => $openejb_version,
    lib        => 'openejb-server.jar',
  }

  tomcat::lib::maven { "${name}:openejb-webservices.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-webservices',
    version    => $openejb_version,
    lib        => 'openejb-webservices.jar',
  }

  tomcat::lib::maven { "${name}:openjpa.jar":
    groupid    => 'org.apache.openejb.patch',
    artifactid => 'openjpa',
    version    => '2.4.0-nonfinal-1598334',
    lib        => 'openjpa.jar',
  }

  tomcat::lib::maven { "${name}:opensaml.jar":
    groupid    => 'org.opensaml',
    artifactid => 'opensaml',
    version    => '2.5.1-1',
    lib        => 'opensaml.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-ee.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-ee',
    version    => $openwebbeans_version,
    lib        => 'openwebbeans-ee.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-ee-common.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-ee-common',
    version    => $openwebbeans_version,
    lib        => 'openwebbeans-ee-common.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-ejb.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-ejb',
    version    => $openwebbeans_version,
    lib        => 'openwebbeans-ejb.jar',
  }
  
  tomcat::lib::maven { "${name}:openwebbeans-el22.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-el22',
    version    => $openwebbeans_version,
    lib        => 'openwebbeans-el22.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-impl.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-impl',
    version    => $openwebbeans_version,
    lib        => 'openwebbeans-impl.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-jsf.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-jsf',
    version    => $openwebbeans_version,
    lib        => 'openwebbeans-jsf.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-spi.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-spi',
    version    => $openwebbeans_version,
    lib        => 'openwebbeans-spi.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-web.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-web',
    version    => $openwebbeans_version,
    lib        => 'openwebbeans-web.jar',
  }

  tomcat::lib::maven { "${name}:openws.jar":
    groupid    => 'org.opensaml',
    artifactid => 'openws',
    version    => '1.4.2-1',
    lib        => 'openws.jar',
  }

  tomcat::lib::maven { "${name}:quartz.jar":
    groupid    => 'org.apache.openejb.shade',
    artifactid => 'quartz-openejb-shade',
    version    => '2.2.1',
    lib        => 'quartz-openejb-shade.jar',
  }

  tomcat::lib::maven { "${name}:saaj-impl.jar":
    groupid    => 'com.sun.xml.messaging.saaj',
    artifactid => 'saaj-impl',
    version    => '1.3.18',
    lib        => 'saaj-impl.jar',
  }
  
  tomcat::lib::maven { "${name}:serp.jar":
    groupid    => 'net.sourceforge.serp',
    artifactid => 'serp',
    version    => '1.14.1',
    lib        => 'serp.jar',
  }
  
  tomcat::lib::maven { "${name}:slf4j-api.jar":
    groupid    => 'org.slf4j',
    artifactid => 'slf4j-api',
    version    => '1.7.5',
    lib        => 'slf4j-api.jar',
  }
  
  tomcat::lib::maven { "${name}:slf4j-jdk14.jar":
    groupid    => 'org.slf4j',
    artifactid => 'slf4j-jdk14',
    version    => '1.7.7',
    lib        => 'slf4j-jdk14.jar',
  }
  
  tomcat::lib::maven { "${name}:stax2-api.jar":
    groupid    => 'org.codehaus.woodstox',
    artifactid => 'stax2-api',
    version    => '3.1.4',
    lib        => 'stax2-api.jar',
  }  
  
  tomcat::lib::maven { "${name}:swizzle-stream.jar":
    groupid    => 'org.codehaus.swizzle',
    artifactid => 'swizzle-stream',
    version    => '1.6.2',
    lib        => 'swizzle-stream.jar',
  }

  tomcat::lib::maven { "${name}:sxc-jaxb-core.jar":
    groupid    => 'org.metatype.sxc',
    artifactid => 'sxc-jaxb-core',
    version    => '0.8',
    lib        => 'sxc-jaxb-core.jar',
  }

  tomcat::lib::maven { "${name}:sxc-runtime.jar":
    groupid    => 'org.metatype.sxc',
    artifactid => 'sxc-runtime',
    version    => '0.8',
    lib        => 'sxc-runtime.jar',
  }
  
  tomcat::lib::maven { "${name}:tomcat-el-api.jar":
    groupid    => 'org.apache.tomcat',
    artifactid => 'tomcat-el-api',
    version    => '7.0.55',
    lib        => 'tomcat-el-api.jar',
  }

  tomcat::lib::maven { "${name}:tomee-catalina.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-catalina',
    version    => $tomee_version,
    lib        => 'tomee-catalina.jar',
  }

  tomcat::lib::maven { "${name}:tomee-common.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-common',
    version    => $tomee_version,
    lib        => 'tomee-common.jar',
  }

  tomcat::lib::maven { "${name}:tomee-jaxrs.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-jaxrs',
    version    => $tomee_version,
    lib        => 'tomee-jaxrs.jar',
  }

  tomcat::lib::maven { "${name}:tomee-jdbc.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-jdbc',
    version    => $tomee_version,
    lib        => 'tomee-jdbc.jar',
  }
  
  tomcat::lib::maven { "${name}:tomee-loader.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-loader',
    version    => $tomee_version,
    lib        => 'tomee-loader.jar',
  }

  tomcat::lib::maven { "${name}:tomee-mojarra.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-mojarra',
    version    => $tomee_version,
    lib        => 'tomee-mojarra.jar',
  }

  tomcat::lib::maven { "${name}:tomee-myfaces.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-myfaces',
    version    => $tomee_version,
    lib        => 'tomee-myfaces.jar',
  }

  tomcat::lib::maven { "${name}:tomee-webapp.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-webapp',
    version    => $tomee_version,
    lib        => 'tomee-webapp.jar',
  }

  tomcat::lib::maven { "${name}:tomee-webservices.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-webservices',
    version    => $tomee_version,
    lib        => 'tomee-webservices.jar',
  }

  tomcat::lib::maven { "${name}:woodstox-core-asl.jar":
    groupid    => 'org.codehaus.woodstox',
    artifactid => 'woodstox-core-asl',
    version    => '4.2.1',
    lib        => 'woodstox-core-asl.jar',
  }

  tomcat::lib::maven { "${name}:wsdl4j.jar":
    groupid    => 'wsdl4j',
    artifactid => 'wsdl4j',
    version    => '1.6.3',
    lib        => 'wsdl4j.jar',
  }

  tomcat::lib::maven { "${name}:wss4j.jar":
    groupid    => 'org.apache.ws.security',
    artifactid => 'wss4j',
    version    => '1.6.15',
    lib        => 'wss4j.jar',
  }

  tomcat::lib::maven { "${name}:xbean-asm5-shaded.jar":
    groupid    => 'org.apache.xbean',
    artifactid => 'xbean-asm5-shaded',
    version    => $xbean_version,
    lib        => 'xbean-asm5-shaded.jar',
  }

  tomcat::lib::maven { "${name}:xbean-bundleutils.jar":
    groupid    => 'org.apache.xbean',
    artifactid => 'xbean-bundleutils',
    version    => $xbean_version,
    lib        => 'xbean-bundleutils.jar',
  }

  tomcat::lib::maven { "${name}:xbean-finder-shaded.jar":
    groupid    => 'org.apache.xbean',
    artifactid => 'xbean-finder-shaded',
    version    => $xbean_version,
    lib        => 'xbean-finder-shaded.jar',
  }
  
  tomcat::lib::maven { "${name}:xbean-naming.jar":
    groupid    => 'org.apache.xbean',
    artifactid => 'xbean-naming',
    version    => $xbean_version,
    lib        => 'xbean-naming.jar',
  }

  tomcat::lib::maven { "${name}:xbean-reflect.jar":
    groupid    => 'org.apache.xbean',
    artifactid => 'xbean-reflect',
    version    => $xbean_version,
    lib        => 'xbean-reflect.jar',
  }
  
  tomcat::lib::maven { "${name}:xml-resolver.jar":
    groupid    => 'xml-resolver',
    artifactid => 'xml-resolver',
    version    => '1.2',
    lib        => 'xml-resolver.jar',
  }

  tomcat::lib::maven { "${name}:xmlschema-core.jar":
    groupid    => 'org.apache.ws.xmlschema',
    artifactid => 'xmlschema-core',
    version    => '2.0.3',
    lib        => 'xmlschema-core.jar',
  }

  tomcat::lib::maven { "${name}:xmlsec.jar":
    groupid    => 'org.apache.santuario',
    artifactid => 'xmlsec',
    version    => '1.5.6',
    lib        => 'xmlsec.jar',
  }

  tomcat::lib::maven { "${name}:xmltooling.jar":
    groupid    => 'org.opensaml',
    artifactid => 'xmltooling',
    version    => '1.3.2-1',
    lib        => 'xmltooling.jar',
  }
}