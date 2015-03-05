class base::motd {

  exec {'motd-enable':
    command => '/bin/sed -i "s/PrintMotd [Nn][Oo]/PrintMotd yes/" /etc/ssh/sshd_config',
    onlyif => '/bin/grep -c "PrintMotd yes" /etc/ssh/sshd_config | grep -c 0',
    notify => Service['sshd']
  }

  service {'sshd':
    ensure => running
  }
 
  $motd = $environment ? {
     'development' => "===== Development =====\n\n",
     'qa'          => "===== QA =====\n\n",
     'merging'     => "===== Merge =====\n\n",
     'production'  => "===== Production =====\n\n"
  }
  file { '/etc/motd' :
    content => $motd,
  }

}
