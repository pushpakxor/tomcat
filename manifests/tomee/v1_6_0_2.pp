define tomcat::tomee::v1_6_0_2 ($instance = $name) {
  include tomcat
  
  Tomcat::Lib::Maven { instance => $instance, }

  tomcat::lib::maven { "${name}:activemq-broker.jar":
    instance   => $instance,
    groupid    => 'org.apache.activemq',
    artifactid => 'activemq-broker',
    version    => '5.9.0',
    lib        => 'activemq-broker.jar',
  }

  tomcat::lib::maven { "${name}:activemq-client.jar":
    instance   => $instance,
    groupid    => 'org.apache.activemq',
    artifactid => 'activemq-client',
    version    => '5.9.0',
    lib        => 'activemq-client.jar',
  }
  
  tomcat::lib::maven { "${name}:activemq-openwire-legacy.jar":
    instance   => $instance,
    groupid    => 'org.apache.activemq',
    artifactid => 'activemq-openwire-legacy',
    version    => '5.9.0',
    lib        => 'activemq-openwire-legacy.jar',
  }

  tomcat::lib::maven { "${name}:activemq-jdbc-store.jar":
    instance   => $instance,
    groupid    => 'org.apache.activemq',
    artifactid => 'activemq-jdbc-store',
    version    => '5.9.0',
    lib        => 'activemq-jdbc-store.jar',
  }
  
  tomcat::lib::maven { "${name}:javaee-api-tomcat.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'javaee-api',
    version    => '6.0-5',
    lib        => 'javaee-api-tomcat.jar',
    classifier => 'tomcat',
    instance   => $instance,
  }

  tomcat::lib::maven { "${name}:myfaces-api.jar":
    groupid    => 'org.apache.myfaces.core',
    artifactid => 'myfaces-api',
    lib        => 'myfaces-api.jar',
    version    => '2.1.13',
    instance   => $instance,
  }

  tomcat::lib::maven { "${name}:myfaces-impl.jar":
    groupid    => 'org.apache.myfaces.core',
    artifactid => 'myfaces-impl',
    lib        => 'myfaces-impl.jar',
    version    => '2.1.13',
    instance   => $instance,
  }

  tomcat::lib::maven { "${name}:commons-codec.jar":
    groupid    => 'commons-codec',
    artifactid => 'commons-codec',
    lib        => 'commons-codec.jar',
    version    => '1.7',
    instance   => $instance,
  }

  tomcat::lib::maven { "${name}:commons-digester.jar":
    groupid    => 'commons-digester',
    artifactid => 'commons-digester',
    lib        => 'commons-digester.jar',
    version    => '1.8',
    instance   => $instance,
  }

  tomcat::lib::maven { "${name}:ecj.jar":
    groupid    => 'org.eclipse.jdt.core.compiler',
    artifactid => 'ecj',
    lib        => 'ecj.jar',
    version    => 'P20140317-1600',
    instance   => $instance,
  }

  tomcat::lib::maven { "${name}:gson.jar":
    groupid    => 'com.google.code.gson',
    artifactid => 'gson',
    lib        => 'gson.jar',
    version    => '2.1',
    instance   => $instance,
  }

  tomcat::lib::maven { "${name}:hawtbuf.jar":
    groupid    => 'org.fusesource.hawtbuf',
    artifactid => 'hawtbuf',
    version    => '1.9',
    lib        => 'hawtbuf.jar',
    instance   => $instance,
  }

  tomcat::lib::maven { "${name}:activemq-ra.jar":
    groupid    => 'org.apache.activemq',
    artifactid => 'activemq-ra',
    version    => '5.9.0',
    lib        => 'activemq-ra.jar',
    instance   => $instance,
  }

  tomcat::lib::maven { "${name}:activemq-kahadb-store.jar":
    groupid    => 'org.apache.activemq',
    artifactid => 'activemq-kahadb-store',
    version    => '5.9.0',
    lib        => 'activemq-kahadb-store.jar',
  }

  tomcat::lib::maven { "${name}:activemq-protobuf.jar":
    groupid    => 'org.apache.activemq.protobuf',
    artifactid => 'activemq-protobuf',
    version    => '1.1',
    lib        => 'activemq-protobuf.jar',
  }

  tomcat::lib::maven { "${name}:geronimo-connector.jar":
    groupid    => 'org.apache.geronimo.components',
    artifactid => 'geronimo-connector',
    version    => '3.1.1',
    lib        => 'geronimo-connector.jar',
  }

  tomcat::lib::maven { "${name}:openejb-core.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-core',
    version    => '4.6.0.2',
    lib        => 'openejb-core.jar',
  }

  tomcat::lib::maven { "${name}:openejb-hsql.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-hsql',
    version    => '4.6.0.2',
    lib        => 'openejb-hsql.jar',
  }

  tomcat::lib::maven { "${name}:openejb-jstl.jar":
    groupid    => 'org.apache.openejb.patch',
    artifactid => 'openejb-jstl',
    version    => '1.2',
    lib        => 'openejb-jstl.jar',
  }

  tomcat::lib::maven { "${name}:commons-cli.jar":
    groupid    => 'commons-cli',
    artifactid => 'commons-cli',
    version    => '1.2',
    lib        => 'commons-cli.jar',
  }

  tomcat::lib::maven { "${name}:commons-dbcp.jar":
    groupid    => 'commons-dbcp',
    artifactid => 'commons-dbcp',
    version    => '1.4',
    lib        => 'commons-dbcp.jar',
  }

  tomcat::lib::maven { "${name}:commons-logging.jar":
    groupid    => 'commons-logging',
    artifactid => 'commons-logging',
    version    => '1.1.1',
    lib        => 'commons-logging.jar',
  }

  #  tomcat::lib::maven { "${name}:commons-pool.jar":
  #    groupid    => 'commons-pool',
  #    artifactid => 'commons-pool',
  #    version    => '1.5.7',
  #    lib        => 'commons-pool.jar',
  #  }

  tomcat::lib::maven { "${name}:bval-core.jar":
    groupid    => 'org.apache.bval',
    artifactid => 'bval-core',
    version    => '0.5',
    lib        => 'bval-core.jar',
  }

  tomcat::lib::maven { "${name}:commons-beanutils-core.jar":
    groupid    => 'commons-beanutils',
    artifactid => 'commons-beanutils-core',
    version    => '1.8.3',
    lib        => 'commons-beanutils-core.jar',
  }

  tomcat::lib::maven { "${name}:bval-jsr303.jar":
    groupid    => 'org.apache.bval',
    artifactid => 'bval-jsr303',
    version    => '0.5',
    lib        => 'bval-jsr303.jar',
  }

  tomcat::lib::maven { "${name}:commons-lang3.jar":
    groupid    => 'org.apache.commons',
    artifactid => 'commons-lang3',
    version    => '3.1',
    lib        => 'commons-lang3.jar',
  }

  tomcat::lib::maven { "${name}:geronimo-javamail_1.4_mail.jar":
    groupid    => 'org.apache.geronimo.javamail',
    artifactid => 'geronimo-javamail_1.4_mail',
    version    => '1.8.2',
    lib        => 'geronimo-javamail_1.4_mail.jar',
  }

  tomcat::lib::maven { "${name}:mbean-annotation-api.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'mbean-annotation-api',
    version    => '4.6.0.2',
    lib        => 'mbean-annotation-api.jar',
  }

  tomcat::lib::maven { "${name}:openejb-api.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-api',
    version    => '4.6.0.2',
    lib        => 'openejb-api.jar',
  }

  tomcat::lib::maven { "${name}:openejb-javaagent.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-javaagent',
    version    => '4.6.0.2',
    lib        => 'openejb-javaagent.jar',
  }

  tomcat::lib::maven { "${name}:openejb-jee.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-jee',
    version    => '4.6.0.2',
    lib        => 'openejb-jee.jar',
  }

  tomcat::lib::maven { "${name}:jaxb-impl.jar":
    groupid    => 'com.sun.xml.bind',
    artifactid => 'jaxb-impl',
    version    => '2.2.6',
    lib        => 'jaxb-impl.jar',
  }

  tomcat::lib::maven { "${name}:openejb-jee-accessors.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-jee-accessors',
    version    => '4.6.0.2',
    lib        => 'openejb-jee-accessors.jar',
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

  tomcat::lib::maven { "${name}:openejb-jpa-integration.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-jpa-integration',
    version    => '4.6.0.2',
    lib        => 'openejb-jpa-integration.jar',
  }

  tomcat::lib::maven { "${name}:openjpa.jar":
    groupid    => 'org.apache.openejb.patch',
    artifactid => 'openjpa',
    version    => '2.3.0-nonfinal-1540826',
    lib        => 'openjpa.jar',
  }

  tomcat::lib::maven { "${name}:commons-collections.jar":
    groupid    => 'commons-collections',
    artifactid => 'commons-collections',
    version    => '3.2.1',
    lib        => 'commons-collections.jar',
  }

  tomcat::lib::maven { "${name}:commons-lang.jar":
    groupid    => 'commons-lang',
    artifactid => 'commons-lang',
    version    => '2.6',
    lib        => 'commons-lang.jar',
  }

  tomcat::lib::maven { "${name}:serp.jar":
    groupid    => 'net.sourceforge.serp',
    artifactid => 'serp',
    version    => '1.14.1',
    lib        => 'serp.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-ee.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-ee',
    version    => '1.2.1',
    lib        => 'openwebbeans-ee.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-ee-common.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-ee-common',
    version    => '1.2.1',
    lib        => 'openwebbeans-ee-common.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-ejb.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-ejb',
    version    => '1.2.1',
    lib        => 'openwebbeans-ejb.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-impl.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-impl',
    version    => '1.2.1',
    lib        => 'openwebbeans-impl.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-jsf.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-jsf',
    version    => '1.2.1',
    lib        => 'openwebbeans-jsf.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-spi.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-spi',
    version    => '1.2.1',
    lib        => 'openwebbeans-spi.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-web.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-web',
    version    => '1.2.1',
    lib        => 'openwebbeans-web.jar',
  }

  tomcat::lib::maven { "${name}:openwebbeans-el22.jar":
    groupid    => 'org.apache.openwebbeans',
    artifactid => 'openwebbeans-el22',
    version    => '1.2.1',
    lib        => 'openwebbeans-el22.jar',
  }

  tomcat::lib::maven { "${name}:xbean-asm4-shaded.jar":
    groupid    => 'org.apache.xbean',
    artifactid => 'xbean-asm4-shaded',
    version    => '3.15',
    lib        => 'xbean-asm4-shaded.jar',
  }

  tomcat::lib::maven { "${name}:xbean-bundleutils.jar":
    groupid    => 'org.apache.xbean',
    artifactid => 'xbean-bundleutils',
    version    => '3.15',
    lib        => 'xbean-bundleutils.jar',
  }

  tomcat::lib::maven { "${name}:xbean-naming.jar":
    groupid    => 'org.apache.xbean',
    artifactid => 'xbean-naming',
    version    => '3.15',
    lib        => 'xbean-naming.jar',
  }

  tomcat::lib::maven { "${name}:jansi.jar":
    groupid    => 'org.fusesource.jansi',
    artifactid => 'jansi',
    version    => '1.8',
    lib        => 'jansi.jar',
  }

  tomcat::lib::maven { "${name}:hsqldb.jar":
    groupid    => 'org.hsqldb',
    artifactid => 'hsqldb',
    version    => '2.3.0',
    lib        => 'hsqldb.jar',
  }

  tomcat::lib::maven { "${name}:howl.jar":
    groupid    => 'org.objectweb.howl',
    artifactid => 'howl',
    version    => '1.0.1-1',
    lib        => 'howl.jar',
  }

  tomcat::lib::maven { "${name}:quartz.jar":
    groupid    => 'org.quartz-scheduler',
    artifactid => 'quartz',
    version    => '2.2.0',
    lib        => 'quartz.jar',
  }

  tomcat::lib::maven { "${name}:slf4j-jdk14.jar":
    groupid    => 'org.slf4j',
    artifactid => 'slf4j-jdk14',
    version    => '1.7.5',
    lib        => 'slf4j-jdk14.jar',
  }

  tomcat::lib::maven { "${name}:openejb-cxf.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-cxf',
    version    => '4.6.0.2',
    lib        => 'openejb-cxf.jar',
  }

  tomcat::lib::maven { "${name}:saaj-impl.jar":
    groupid    => 'com.sun.xml.messaging.saaj',
    artifactid => 'saaj-impl',
    version    => '1.3.18',
    lib        => 'saaj-impl.jar',
  }

  tomcat::lib::maven { "${name}:mimepull.jar":
    groupid    => 'org.jvnet.mimepull',
    artifactid => 'mimepull',
    version    => '1.7',
    lib        => 'mimepull.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-frontend-jaxws.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-frontend-jaxws',
    version    => '2.6.14',
    lib        => 'cxf-rt-frontend-jaxws.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-bindings-soap.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-bindings-soap',
    version    => '2.6.14',
    lib        => 'cxf-rt-bindings-soap.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-databinding-jaxb.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-databinding-jaxb',
    version    => '2.6.14',
    lib        => 'cxf-rt-databinding-jaxb.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-frontend-simple.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-frontend-simple',
    version    => '2.6.14',
    lib        => 'cxf-rt-frontend-simple.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-ws-addr.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-ws-addr',
    version    => '2.6.14',
    lib        => 'cxf-rt-ws-addr.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-ws-policy.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-ws-policy',
    version    => '2.6.14',
    lib        => 'cxf-rt-ws-policy.jar',
  }

  tomcat::lib::maven { "${name}:neethi.jar":
    groupid    => 'org.apache.neethi',
    artifactid => 'neethi',
    version    => '3.0.2',
    lib        => 'neethi.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-ws-security.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-ws-security',
    version    => '2.6.14',
    lib        => 'cxf-rt-ws-security.jar',
  }

  tomcat::lib::maven { "${name}:geronimo-transaction.jar":
    groupid    => 'org.apache.geronimo.components',
    artifactid => 'geronimo-transaction',
    version    => '3.1.1',
    lib        => 'geronimo-transaction.jar',
  }

  #  tomcat::lib::maven { "${name}:geronimo-j2ee-connector_1.6_spec.jar":
  #    groupid    => 'org.apache.geronimo.specs',
  #    artifactid => 'geronimo-j2ee-connector_1.6_spec',
  #    version    => '1.0',
  #    lib        => 'geronimo-j2ee-connector_1.6_spec.jar',
  #  }

  tomcat::lib::maven { "${name}:wss4j.jar":
    groupid    => 'org.apache.ws.security',
    artifactid => 'wss4j',
    version    => '1.6.11',
    lib        => 'wss4j.jar',
  }

  tomcat::lib::maven { "${name}:xmlsec.jar":
    groupid    => 'org.apache.santuario',
    artifactid => 'xmlsec',
    version    => '1.5.4',
    lib        => 'xmlsec.jar',
  }

  tomcat::lib::maven { "${name}:opensaml.jar":
    groupid    => 'org.opensaml',
    artifactid => 'opensaml',
    version    => '2.5.1-1',
    lib        => 'opensaml.jar',
  }

  tomcat::lib::maven { "${name}:openws.jar":
    groupid    => 'org.opensaml',
    artifactid => 'openws',
    version    => '1.4.2-1',
    lib        => 'openws.jar',
  }

  tomcat::lib::maven { "${name}:xmltooling.jar":
    groupid    => 'org.opensaml',
    artifactid => 'xmltooling',
    version    => '1.3.2-1',
    lib        => 'xmltooling.jar',
  }

  tomcat::lib::maven { "${name}:joda-time.jar":
    groupid    => 'joda-time',
    artifactid => 'joda-time',
    version    => '1.6.2',
    lib        => 'joda-time.jar',
  }

  tomcat::lib::maven { "${name}:xbean-finder-shaded.jar":
    groupid    => 'org.apache.xbean',
    artifactid => 'xbean-finder-shaded',
    version    => '3.15',
    lib        => 'xbean-finder-shaded.jar',
  }

  tomcat::lib::maven { "${name}:xbean-reflect.jar":
    groupid    => 'org.apache.xbean',
    artifactid => 'xbean-reflect',
    version    => '3.15',
    lib        => 'xbean-reflect.jar',
  }

  tomcat::lib::maven { "${name}:slf4j-api.jar":
    groupid    => 'org.slf4j',
    artifactid => 'slf4j-api',
    version    => '1.7.5',
    lib        => 'slf4j-api.jar',
  }

  tomcat::lib::maven { "${name}:wsdl4j.jar":
    groupid    => 'wsdl4j',
    artifactid => 'wsdl4j',
    version    => '1.6.3',
    lib        => 'wsdl4j.jar',
  }

  tomcat::lib::maven { "${name}:serializer.jar":
    groupid    => 'xalan',
    artifactid => 'serializer',
    version    => '2.7.1',
    lib        => 'serializer.jar',
  }

  tomcat::lib::maven { "${name}:xalan.jar":
    groupid    => 'xalan',
    artifactid => 'xalan',
    version    => '2.7.1',
    lib        => 'xalan.jar',
  }

  #tomcat::lib::maven { "${name}:xercesImpl.jar":
  #  groupid    => 'xerces',
  #  artifactid => 'xercesImpl',
  #  version    => '2.11.0',
  #  lib        => 'xercesImpl.jar',
  #}

  maven { "${tomcat::params::home}/${instance}/tomcat/lib/xercesImpl.jar":
    groupid    => 'xerces',
    artifactid => 'xercesImpl',
    version    => '2.11.0',
    packaging  => 'jar',
    notify     => Tomcat::Service[$instance],
  }

  tomcat::lib::maven { "${name}:xml-resolver.jar":
    groupid    => 'xml-resolver',
    artifactid => 'xml-resolver',
    version    => '1.2',
    lib        => 'xml-resolver.jar',
  }

  tomcat::lib::maven { "${name}:openejb-cxf-rs.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-cxf-rs',
    version    => '4.6.0.2',
    lib        => 'openejb-cxf-rs.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-frontend-jaxrs.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-frontend-jaxrs',
    version    => '2.6.14',
    lib        => 'cxf-rt-frontend-jaxrs.jar',
  }

  tomcat::lib::maven { "${name}:cxf-api.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-api',
    version    => '2.6.14',
    lib        => 'cxf-api.jar',
  }

  tomcat::lib::maven { "${name}:xmlschema-core.jar":
    groupid    => 'org.apache.ws.xmlschema',
    artifactid => 'xmlschema-core',
    version    => '2.0.3',
    lib        => 'xmlschema-core.jar',
  }

  tomcat::lib::maven { "${name}:woodstox-core-asl.jar":
    groupid    => 'org.codehaus.woodstox',
    artifactid => 'woodstox-core-asl',
    version    => '4.2.1',
    lib        => 'woodstox-core-asl.jar',
  }

  tomcat::lib::maven { "${name}:stax2-api.jar":
    groupid    => 'org.codehaus.woodstox',
    artifactid => 'stax2-api',
    version    => '3.1.4',
    lib        => 'stax2-api.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-bindings-xml.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-bindings-xml',
    version    => '2.6.14',
    lib        => 'cxf-rt-bindings-xml.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-core.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-core',
    version    => '2.6.14',
    lib        => 'cxf-rt-core.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-rs-extension-providers.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-rs-extension-providers',
    version    => '2.6.14',
    lib        => 'cxf-rt-rs-extension-providers.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-rs-extension-search.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-rs-extension-search',
    version    => '2.6.14',
    lib        => 'cxf-rt-rs-extension-search.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-rs-security-cors.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-rs-security-cors',
    version    => '2.6.14',
    lib        => 'cxf-rt-rs-security-cors.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-rs-security-oauth2.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-rs-security-oauth2',
    version    => '2.6.14',
    lib        => 'cxf-rt-rs-security-oauth2.jar',
  }

  tomcat::lib::maven { "${name}:openejb-http.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-http',
    version    => '4.6.0.2',
    lib        => 'openejb-http.jar',
  }

  tomcat::lib::maven { "${name}:jettison.jar":
    groupid    => 'org.codehaus.jettison',
    artifactid => 'jettison',
    version    => '1.3.4',
    lib        => 'jettison.jar',
  }

  tomcat::lib::maven { "${name}:openejb-cxf-transport.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-cxf-transport',
    version    => '4.6.0.2',
    lib        => 'openejb-cxf-transport.jar',
  }

  tomcat::lib::maven { "${name}:cxf-rt-transports-http.jar":
    groupid    => 'org.apache.cxf',
    artifactid => 'cxf-rt-transports-http',
    version    => '2.6.14',
    lib        => 'cxf-rt-transports-http.jar',
  }

  tomcat::lib::maven { "${name}:openejb-rest.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-rest',
    version    => '4.6.0.2',
    lib        => 'openejb-rest.jar',
  }

  tomcat::lib::maven { "${name}:openejb-webservices.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-webservices',
    version    => '4.6.0.2',
    lib        => 'openejb-webservices.jar',
  }

  tomcat::lib::maven { "${name}:openejb-loader.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-loader',
    version    => '4.6.0.2',
    lib        => 'openejb-loader.jar',
  }

  tomcat::lib::maven { "${name}:openejb-server.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-server',
    version    => '4.6.0.2',
    lib        => 'openejb-server.jar',
  }

  tomcat::lib::maven { "${name}:openejb-client.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-client',
    version    => '4.6.0.2',
    lib        => 'openejb-client.jar',
  }

  tomcat::lib::maven { "${name}:swizzle-stream.jar":
    groupid    => 'org.codehaus.swizzle',
    artifactid => 'swizzle-stream',
    version    => '1.6.2',
    lib        => 'swizzle-stream.jar',
  }

  tomcat::lib::maven { "${name}:tomee-mojarra.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-mojarra',
    version    => '1.6.0.2',
    lib        => 'tomee-mojarra.jar',
  }

  tomcat::lib::maven { "${name}:tomee-myfaces.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-myfaces',
    version    => '1.6.0.2',
    lib        => 'tomee-myfaces.jar',
  }

  tomcat::lib::maven { "${name}:tomee-webapp.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-webapp',
    version    => '1.6.0.2',
    lib        => 'tomee-webapp.jar',
  }

  tomcat::lib::maven { "${name}:tomee-webservices.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-webservices',
    version    => '1.6.0.2',
    lib        => 'tomee-webservices.jar',
  }

  tomcat::lib::maven { "${name}:openejb-ejbd.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'openejb-ejbd',
    version    => '4.6.0.2',
    lib        => 'openejb-ejbd.jar',
  }

  tomcat::lib::maven { "${name}:tomee-catalina.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-catalina',
    version    => '1.6.0.2',
    lib        => 'tomee-catalina.jar',
  }

  tomcat::lib::maven { "${name}:tomee-jdbc.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-jdbc',
    version    => '1.6.0.2',
    lib        => 'tomee-jdbc.jar',
  }

  tomcat::lib::maven { "${name}:tomee-common.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-common',
    version    => '1.6.0.2',
    lib        => 'tomee-common.jar',
  }

  tomcat::lib::maven { "${name}:tomee-jaxrs.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-jaxrs',
    version    => '1.6.0.2',
    lib        => 'tomee-jaxrs.jar',
  }

  tomcat::lib::maven { "${name}:tomee-loader.jar":
    groupid    => 'org.apache.openejb',
    artifactid => 'tomee-loader',
    version    => '1.6.0.2',
    lib        => 'tomee-loader.jar',
  }

  tomcat::lib::maven { "${name}:xml-apis.jar":
    groupid    => 'xml-apis',
    artifactid => 'xml-apis',
    version    => '1.4.01',
    lib        => 'xml-apis.jar',
  }
}
