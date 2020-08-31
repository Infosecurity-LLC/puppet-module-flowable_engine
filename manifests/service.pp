class flowable_engine::service(

  $service_ensure       = $flowable_engine::service_ensure,
  $service_enabled      = $flowable_engine::service_enabled,
  $webapps_folder       = $flowable_engine::webapps_folder,
  $service_name         = $flowable_engine::service_name,
  $package_name         = $flowable_engine::package_name,
  $index_file_flowable  = $flowable_engine::index_file_flowable
  $config_file_tomcat   = $flowable_engine::config_file_tomcat
  $config_file_admin    = $flowable_engine::config_file_admin
  $config_file_idm      = $flowable_engine::config_file_idm
  $config_file_modeler  = $flowable_engine::config_file_modeler
  $config_file_rest     = $flowable_engine::config_file_rest
  $config_file_task     = $flowable_engine::config_file_task

){

    service { $service_name:
      ensure     => $service_ensure,
      enable     => $service_enabled,
      hasrestart => true,
      hasstatus  => true,
      require    => Package[$package_name],
      subscribe => [
        File[$index_file_flowable],
        File[$config_file_tomcat],
        File[$config_file_admin],
        File[$config_file_idm],
        File[$config_file_modeler],
        File[$config_file_rest],
        File[$config_file_task],
      ],
    }

}
