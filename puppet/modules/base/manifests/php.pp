class base::php {

  $phppackages=['php-mysql','php-gd','php-mcrypt']

  package {'php':
    ensure => 'installed',
  }

  package {$phppackages:
    ensure => 'installed',
    require => Package['php'],
  }

}
