class flowable_engine::install(

  $ensure           = $flowable_engine::ensure,
  $version          = $flowable_engine::version,
  $source_file_url  = $flowable_engine::$source_file_url,
  $source_file_name = $flowable_engine::$source_file_name,
  $proxy_url        = $flowable_engine::$proxy_url,
  $package_name     = $flowable_engine::$package_name,
  $service_name     = $flowable_engine::$service_name,
  $webapps_folder   = $flowable_engine::$webapps_folder,

){

  include 'archive'

  $_ensure = $ensure ? {
    'absent' => $ensure,
    default  => $version,
  }

  package { $package_name:
    ensure => $_ensure,
  }

  'archive': {
    archive { "$webapps_folder/$source_file_name":
      ensure          => present,
      extract         => true,
      extract_command => "unzip -j %s *.war",
      extract_path    => "$webapps_folder",
      source          => "$source_file_url",
      creates         => "$webapps_folder",
      cleanup         => true,
      proxy_server    => $proxy_url,
      before          => File[$webapps_folder],
      require         => [
        File[$webapps_folder],
        File[$webapps_folder/$source_file_name],
      ],
    }
  }

}