class base {

  include base::motd
  include base::httpd
  include base::php

  $packages=['epel-release','telnet','bind-utils','bzip2']

  package {$packages:
    ensure => 'installed',
  }

}
