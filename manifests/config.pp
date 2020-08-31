class flowable_engine::config(

  $index_file_flowable          = $flowable_engine::index_file_flowable,
  $config_file_tomcat           = $flowable_engine::config_file_tomcat,
  $config_file_admin            = $flowable_engine::config_file_admin,
  $config_file_idm              = $flowable_engine::config_file_idm,
  $config_file_modeler          = $flowable_engine::config_file_modeler,
  $config_file_rest             = $flowable_engine::config_file_rest,
  $config_file_task             = $flowable_engine::config_file_task,

  $config_owner                 = 'tomcat',
  $config_group                 = 'tomcat',
  $config_mode                  = '0644',

  $config_template_tomcat       = $flowable_engine::config_template_tomcat,
  $config_template_admin        = $flowable_engine::config_template_admin,
  $config_template_idm          = $flowable_engine::config_template_idm,
  $config_template_modeler      = $flowable_engine::config_template_modeler,
  $config_template_rest         = $flowable_engine::config_template_rest,
  $config_template_task         = $flowable_engine::config_template_task,

  $package_name                 = $flowable_engine::package_name,
  $service_name                 = $flowable_engine::service_name,

  $flowable_datasource_driver   = $flowable_engine::flowable_datasource_driver,
  $flowable_datasource_url      = $flowable_engine::flowable_datasource_url,
  $flowable_datasource_username = $flowable_engine::flowable_datasource_username,
  $flowable_datasource_password = $flowable_engine::flowable_datasource_password,

  $flowable_admin_url           = $flowable_engine::flowable_admin_url,
  $flowable_admin_port          = $flowable_engine::flowable_admin_port,
  $flowable_admin_username      = $flowable_engine::flowable_admin_username,
  $flowable_admin_password      = $flowable_engine::flowable_admin_password,
  $flowable_admin_encr_iv       = $flowable_engine::flowable_admin_encr_iv,
  $flowable_admin_encr_secret   = $flowable_engine::flowable_admin_encr_secret,

  $flowable_idm_url             = $flowable_engine::flowable_idm_url,
  $flowable_idm_security_key    = $flowable_engine::flowable_idm_security_key,

  $flowable_modeler_api_url     = $flowable_engine::flowable_modeler_api_url,

  $flowable_rest_admin_username = $flowable_engine::flowable_rest_admin_username,
  $flowable_rest_admin_password = $flowable_engine::flowable_rest_admin_password,

  $flowable_smtp_host           = $flowable_engine::flowable_smtp_host,
  $flowable_smtp_port           = $flowable_engine::flowable_smtp_port,
  $flowable_smtp_username       = $flowable_engine::flowable_smtp_username,
  $flowable_smtp_password       = $flowable_engine::flowable_smtp_password,
  $flowable_smtp_tls            = $flowable_engine::flowable_smtp_tls,
  $flowable_smtp_ssl            = $flowable_engine::flowable_smtp_ssl,
  $flowable_smtp_auth           = $flowable_engine::flowable_smtp_auth,

) {

  file { $index_file_flowable:
    ensure => file,
    owner   => $config_owner,
    group   => $config_group,
    mode    => $config_mode,
    source => "puppet:///modules/flowable_engine/index.html",
    require => Service[$service_name],
    notify  => Service[$service_name],
  }

  file { $config_file_tomcat:
    ensure  => file,
    owner   => $config_owner,
    group   => $config_group,
    mode    => $config_mode,
    content => template($config_template_tomcat),
    notify  => Service[$service_name],
  }

  file { $config_file_admin:
    ensure  => file,
    owner   => $config_owner,
    group   => $config_group,
    mode    => $config_mode,
    content => template($config_template_admin),
#    require => Service[$service_name],
    notify  => Service[$service_name],
  }

  file { $config_file_idm:
    ensure  => file,
    owner   => $config_owner,
    group   => $config_group,
    mode    => $config_mode,
    content => template($config_template_idm),
#    require => Service[$service_name],
    notify  => Service[$service_name],
  }

  file { $config_file_modeler:
    ensure  => file,
    owner   => $config_owner,
    group   => $config_group,
    mode    => $config_mode,
    content => template($config_template_modeler),
#    require => Service[$service_name],
    notify  => Service[$service_name],
  }

  file { $config_file_rest:
    ensure  => file,
    owner   => $config_owner,
    group   => $config_group,
    mode    => $config_mode,
    content => template($config_template_rest),
#    require => Service[$service_name],
    notify  => Service[$service_name],
  }

  file { $config_file_task:
    ensure  => file,
    owner   => $config_owner,
    group   => $config_group,
    mode    => $config_mode,
    content => template($config_template_task),
#    require => Service[$service_name],
    notify  => Service[$service_name],
  }

}
