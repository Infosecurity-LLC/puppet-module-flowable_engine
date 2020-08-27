class flowable_engine::install(

  $ensure           = $flowable_engine::ensure,
  $version          = $flowable_engine::version,
  $source_file_url  = $flowable_engine::$source_file_url,
  $source_file_name = $flowable_engine::$source_file_name,
  $source_file_ext  = $flowable_engine::$source_file_ext,
  $proxy_url        = $flowable_engine::$proxy_url,
  $package_name     = $flowable_engine::$package_name,
  $service_name     = $flowable_engine::$service_name,
  $webapps_folder   = $flowable_engine::$webapps_folder,

){

  exec{'get_flowable_engine':
    creates => $webapps_folder,
    command => "https_proxy=$proxy_url wget $source_file_url -O $webapps_folder",
    command => "unzip -j $webapps_folder/$source_file_name.$source_file_ext $source_file_name/wars/*.war -d $webapps_folder",
    command => "rm -f $webapps_folder/$source_file_name.$source_file_ext",
  }

  file{ $webapps_folder:
    mode => 0755,
    require => Exec["get_flowable_engine"],
  }

  $_ensure = $ensure ? {
    'absent' => $ensure,
    default  => $version,
  }

  package { $package_name:
    ensure => $_ensure,
  }

}
