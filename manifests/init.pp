class flowable_engine(

  $version                      = $flowable_engine::params::version,
  $ensure                       = $flowable_engine::params::ensure,
  $service_enabled              = $flowable_engine::params::service_enabled,
  $service_ensure               = $flowable_engine::params::service_ensure,
  $service_hostname             = $flowable_engine::params::service_hostname,
  $service_port                 = $flowable_engine::params::service_port,
  $redirect_port                = $flowable_engine::params::redirect_port,

  $source_file_url              = $flowable_engine::params::source_file_url,
  $source_file_name             = $flowable_engine::params::source_file_name,

  $proxy_url                    = $flowable_engine::params::proxy_url,

  $config_file_tomcat           = $flowable_engine::params::config_file_tomcat,
  $config_file_admin            = $flowable_engine::params::config_file_admin,
  $config_file_idm              = $flowable_engine::params::config_file_idm,
  $config_file_modeler          = $flowable_engine::params::config_file_modeler,
  $config_file_rest             = $flowable_engine::params::config_file_rest,
  $config_file_task             = $flowable_engine::params::config_file_task,

  $config_template_tomcat       = $flowable_engine::params::config_template_tomcat,
  $config_template_admin        = $flowable_engine::params::config_template_admin,
  $config_template_idm          = $flowable_engine::params::config_template_idm,
  $config_template_modeler      = $flowable_engine::params::config_template_modeler,
  $config_template_rest         = $flowable_engine::params::config_template_rest,
  $config_template_task         = $flowable_engine::params::config_template_task,

  $webapps_folder               = $flowable_engine::params::webapps_folder,
  $index_file_flowable          = $flowable_engine::params::index_file_flowable,

  $flowable_datasource_driver   = $flowable_engine::params::flowable_datasource_driver,
  $flowable_datasource_url      = $flowable_engine::params::flowable_datasource_url,
  $flowable_datasource_username = $flowable_engine::params::flowable_datasource_username,
  $flowable_datasource_password = $flowable_engine::params::flowable_datasource_password,

  $flowable_admin_url           = $flowable_engine::params::flowable_admin_url,
  $flowable_admin_port          = $flowable_engine::params::flowable_admin_port,
  $flowable_admin_username      = $flowable_engine::params::flowable_admin_username,
  $flowable_admin_password      = $flowable_engine::params::flowable_admin_password,
  $flowable_admin_encr_iv       = $flowable_engine::params::flowable_admin_encr_iv,
  $flowable_admin_encr_secret   = $flowable_engine::params::flowable_admin_encr_secret,

  $flowable_idm_url             = $flowable_engine::params::flowable_idm_url,
  $flowable_idm_security_key    = $flowable_engine::params::flowable_idm_security_key,

  $flowable_modeler_api_url     = $flowable_engine::params::flowable_modeler_api_url,

  $flowable_rest_admin_username = $flowable_engine::params::flowable_rest_admin_username,
  $flowable_rest_admin_password = $flowable_engine::params::flowable_rest_admin_password,

  $flowable_smtp_host           = $flowable_engine::params::flowable_smtp_host,
  $flowable_smtp_port           = $flowable_engine::params::flowable_smtp_port,
  $flowable_smtp_username       = $flowable_engine::params::flowable_smtp_username,
  $flowable_smtp_password       = $flowable_engine::params::flowable_smtp_password,
  $flowable_smtp_tls            = $flowable_engine::params::flowable_smtp_tls,
  $flowable_smtp_ssl            = $flowable_engine::params::flowable_smtp_ssl,
  $flowable_smtp_auth           = $flowable_engine::params::flowable_smtp_auth,

) inherits flowable_engine::params {

  anchor { 'flowable_engine::start': }
  -> class { 'flowable_engine::install': }
  -> class { 'flowable_engine::config': }
  -> class { 'flowable_engine::service': }
  -> anchor { 'flowable_engine::end': }

}
