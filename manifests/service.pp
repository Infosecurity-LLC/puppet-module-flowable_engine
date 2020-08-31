class flowable_engine::service(

  $service_ensure  = $flowable_engine::service_ensure,
  $service_enabled = $flowable_engine::service_enabled,
  $webapps_folder  = $flowable_engine::webapps_folder,
  $war_file1       = $flowable_engine::war_file1,
  $war_file2       = $flowable_engine::war_file2,
  $war_file3       = $flowable_engine::war_file3,
  $war_file4       = $flowable_engine::war_file4,
  $war_file5       = $flowable_engine::war_file5,
  $service_name    = $flowable_engine::service_name,
  $package_name    = $flowable_engine::package_name,

){

    exec { 'check_wars_presence':
      cwd     => $webapps_folder,
      command => '/bin/true',
      onlyif => [
        "/bin/test -e $war_file1",
        "/bin/test -e $war_file2",
        "/bin/test -e $war_file3",
        "/bin/test -e $war_file4",
        "/bin/test -e $war_file5",
      ],
    }

    service { $service_name:
      ensure     => $service_ensure,
      enable     => $service_enabled,
      hasrestart => true,
      hasstatus  => true,
      before     => Exec['check_wars_presence'],
      require    => Package[$package_name],
    }

}
