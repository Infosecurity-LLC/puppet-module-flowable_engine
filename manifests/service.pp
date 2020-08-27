class flowable_engine::service(

  $service_ensure  = $flowable_engine::service_ensure,
  $service_enabled = $flowable_engine::service_enabled,
  $service_name    = $flowable_engine::$service_name,
  $package_name    = $flowable_engine::$package_name,

){

    service { $service_name:
      ensure     => $service_ensure,
      enable     => $service_enabled,
      hasrestart => true,
      hasstatus  => true,
      require    => Package[$package_name],
    }

}
