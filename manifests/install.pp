class flowable_engine::install(

  $ensure           = $flowable_engine::ensure,
  $version          = $flowable_engine::version,
  $source_file_url  = $flowable_engine::source_file_url,
  $source_file_name = $flowable_engine::source_file_name,
  $source_file_md5  = $flowable_engine::source_file_md5,
  $proxy_url        = $flowable_engine::proxy_url,
  $package_name     = $flowable_engine::package_name,
  $service_name     = $flowable_engine::service_name,
  $webapps_folder   = $flowable_engine::webapps_folder,

){

  include 'archive'

  package { $package_name:
    ensure => present,
  }

  file { '/usr/share/java/tomcat/postgresql-jdbc.jar':
     ensure => 'link',
     target => '/usr/share/java/postgresql-jdbc.jar',
  }

  file { '/usr/share/java/tomcat/postgresql-jdbc2.jar':
     ensure => 'link',
     target => '/usr/share/java/postgresql-jdbc2.jar',
  }

  file { '/usr/share/java/tomcat/postgresql-jdbc2ee.jar':
     ensure => 'link',
     target => '/usr/share/java/postgresql-jdbc2ee.jar',
  }

  file { '/usr/share/java/tomcat/postgresql-jdbc3.jar':
     ensure => 'link',
     target => '/usr/share/java/postgresql-jdbc3.jar',
  }

  archive { "${webapps_folder}/${source_file_name}":
    ensure          => present,
    source          => $source_file_url,
    checksum        => $source_file_md5,
    checksum_type   => 'md5',
    extract         => true,
    temp_dir        => $webapps_folder,
    extract_path    => $webapps_folder,
    extract_command => "unzip -j %s *.war",
    proxy_server    => $proxy_url,
    proxy_type      => 'https',
    cleanup         => true,
  }

}
