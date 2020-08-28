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

  include 'wget'

  package { $package_name:
    ensure => present,
  }

#  package { 'unzip':
#    ensure => present,
#  }

  file { $webapps_folder:
    ensure => directory,
    owner  => 'tomcat',
    group  => 'tomcat',
    mode   => '0755',
  }

  wget::fetch { "Download Flowable":
    source      => $source_file_url,
    destination => $webapps_folder,
    timeout     => 0,
    verbose     => true,
  }

  exec { "unzip -j $source_file_name *.war -d $webapps_folder":
    cwd     => $webapps_folder,
    creates => $webapps_folder,
    path    => ['/usr/bin', '/usr/sbin',],
  }

#  archive { "${source_file_name}":
#    ensure          => present,
#    extract         => true,
#    extract_command => "unzip -j %s *.war",
#    extract_path    => "${webapps_folder}",
#    source          => "${source_file_url}",
#    creates         => "${webapps_folder}/ROOT",
#    cleanup         => true,
#    proxy_server    => "${proxy_url}",
#    before          => File["${webapps_folder}"],
#    require         => [
#      Package[$package_name],
#      Package['wget'],
#      Package['unzip'],
#    ],
#  }

}
