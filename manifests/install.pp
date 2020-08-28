class flowable_engine::install(

  $ensure           = $flowable_engine::ensure,
  $version          = $flowable_engine::version,
  $source_file_url  = $flowable_engine::source_file_url,
  $source_file_name = $flowable_engine::source_file_name,
  $proxy_url        = $flowable_engine::proxy_url,
  $package_name     = $flowable_engine::package_name,
  $service_name     = $flowable_engine::service_name,
  $webapps_folder   = $flowable_engine::webapps_folder,

){

  include 'archive'

  package { $package_name:
    ensure => present,
  }

  archive { "${webapps_folder}/${source_file_name}":
    ensure          => present,
    extract         => true,
    extract_path    => $webapps_folder,
    extract_command => "unzip -j %s *.war",
    source          => $source_file_url,
    cleanup         => true,
    require         => Package['unzip'],
  }

}
