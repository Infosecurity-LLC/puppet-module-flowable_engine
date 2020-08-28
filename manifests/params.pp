class flowable_engine::params {

  $ensure                       = 'present'
  $version                      = 'installed'
  $package_name                 = [ 'tomcat', 'tomcat-webapps', 'postgresql-jdbc', 'unzip' ]
  $service_name                 = 'flowable_engine'
  $service_ensure               = 'running'
  $service_enabled              = true
  $service_hostname             = ''
  $service_port                 = ''
  $redirect_port                = ''

  $source_file_url              = 'https://github.com/flowable/flowable-engine/releases/download/flowable-6.5.0/flowable-6.5.0.zip'
  $source_file_name             = 'flowable-6.5.0.zip'
  $proxy_url                    = ''

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

  $flowable_datasource_driver   = ''
  $flowable_datasource_url      = ''
  $flowable_datasource_username = ''
  $flowable_datasource_password = ''

  $flowable_admin_url           = ''
  $flowable_admin_port          = ''
  $flowable_admin_username      = ''
  $flowable_admin_password      = ''
  $flowable_admin_encr_iv       = ''
  $flowable_admin_encr_secret   = ''

  $flowable_idm_url             = ''
  $flowable_idm_security_key    = ''

  $flowable_modeler_api_url     = ''

  $flowable_rest_admin_username = ''
  $flowable_rest_admin_password = ''

  $flowable_smtp_host           = ''
  $flowable_smtp_port           = ''
  $flowable_smtp_username       = ''
  $flowable_smtp_password       = ''
  $flowable_smtp_tls            = ''
  $flowable_smtp_ssl            = ''
  $flowable_smtp_auth           = ''

}
