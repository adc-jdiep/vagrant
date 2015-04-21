# Python modules related
#
# python - base packages
# python::modules - all packages required for awb1.5 to work
# python::prod_fix

class python {

  package { "python": 
    ensure => 'installed'
  }
  package { "openssl":
    ensure => 'installed',
    require => Package["httpd"]
  }
  package { "mod_ssl":
    ensure => 'installed',
    require => Package["openssl"]
  }
  package { "mod_wsgi":
    ensure => 'installed',
    require => Package["python"]
  }
  package { "python-setuptools":
    ensure => 'installed',
    require => Package["python"]
  }
  package { "MySQL-python":
    ensure => 'installed',
    require => Package["python"]
  }
  package { "python-memcached":
    ensure => 'installed',
    require => Package["python"]
  }
  package { "python-pip":
    ensure => 'installed',
    require => Package["python"]
  }
}

