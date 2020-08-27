class flowable_engine::params {

  $ensure                       = 'present'
  $version                      = 'installed'
  $package_name                 = [ 'tomcat', 'tomcat-webapps', 'postgresql-jdbc', 'wget', 'unzip' ]
  $service_name                 = 'flowable_engine'
  $service_ensure               = 'running'
  $service_enabled              = true
  $service_hostname             = 'is-p-flow01.soc.iss.corp'
  $service_port                 = '80'
  $redirect_port                = '443'

  $source_file_url              = 'https://github.com/flowable/flowable-engine/releases/download/flowable-6.5.0/'
  $source_file_name             = 'flowable-6.5.0'
  $source_file_ext              = 'zip'
  $proxy_url                    = 'http://sec-proxy.iss.corp:17301/'

  $webapps_folder               = '/var/lib/tomcat/webapps'
  $index_file_flowable          = '/var/lib/tomcat/webapps/ROOT/index.html'

  $config_file_tomcat           = '/etc/tomcat/server.xml'
  $config_file_admin            = '/var/lib/tomcat/webapps/flowable-admin/WEB-INF/classes/flowable-default.properties'
  $config_file_idm              = '/var/lib/tomcat/webapps/flowable-idm/WEB-INF/classes/flowable-default.properties'
  $config_file_modeler          = '/var/lib/tomcat/webapps/flowable-modeler/WEB-INF/classes/flowable-default.properties'
  $config_file_rest             = '/var/lib/tomcat/webapps/flowable-rest/WEB-INF/classes/flowable-default.properties'
  $config_file_task             = '/var/lib/tomcat/webapps/flowable-task/WEB-INF/classes/flowable-default.properties'

  $config_template_tomcat       = 'flowable_engine/tomcat/server.xml.erb'
  $config_template_admin        = 'flowable_engine/admin/flowable-default.properties.erb'
  $config_template_idm          = 'flowable_engine/idm/flowable-default.properties.erb'
  $config_template_modeler      = 'flowable_engine/modeler/flowable-default.properties.erb'
  $config_template_rest         = 'flowable_engine/rest/flowable-default.properties.erb'
  $config_template_task         = 'flowable_engine/task/flowable-default.properties.erb'

  $flowable_datasource_driver   = 'org.postgresql.Driver'
  $flowable_datasource_url      = 'jdbc:postgresql://is-p-psql01.soc.iss.corp:5432/flowable'
  $flowable_datasource_username = 'flowable'
  $flowable_datasource_password = 'xEybJlK11AlPQEPC'

  $flowable_admin_url           = 'http://is-p-flow01.soc.iss.corp'
  $flowable_admin_port          = '80'
  $flowable_admin_username      = 'admin'
  $flowable_admin_password      = 'ipl58nt7ODEsVbES'
  $flowable_admin_encr_iv       = 'j8kdO2hejA9lKmm6'
  $flowable_admin_encr_secret   = '9FGl73ngxcOoJvmL'

  $flowable_idm_url             = 'http://is-p-flow01.soc.iss.corp/flowable-idm'
  $flowable_idm_security_key    = 'tesdsftDFEWrf3dkey'

  $flowable_modeler_api_url     = 'http://is-p-flow01.soc.iss.corp/flowable-task/app-api'

  $flowable_rest_admin_username = 'rest-admin'
  $flowable_rest_admin_password = 'ipl58nt7ODEsVbES'

  $flowable_smtp_host           = 'fakesmtp.soc.iss.corp'
  $flowable_smtp_port           = '1025'
  $flowable_smtp_username       = 'robot@iss.com'
  $flowable_smtp_password       = ''
  $flowable_smtp_tls            = 'false'
  $flowable_smtp_ssl            = 'false'
  $flowable_smtp_auth           = 'false'

}
