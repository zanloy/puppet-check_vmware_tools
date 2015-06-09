class check_vmware_tools {

    file {
        '/etc/init.d/check-vmware-tools':
            ensure => file,
            source => "puppet:///modules/${module_name}/etc/init.d/check-vmware-tools",
            owner => 'root',
            group => 'root',
            mode => '0755';
    }

    service { 'check-vmware-tools': enable => true, require => File['/etc/init.d/check-vmware-tools']; }

}
