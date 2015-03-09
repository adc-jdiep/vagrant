# Python modules related
#
# adc_python::modules - all packages required for awb1.5 to work

class adc_python::modules {
  $nose_version='1.3.3'
  $redis_version='2.7.3'
  $jinja2_version='2.7.3'
  $cssmin_version='0.2.0'
  $jsmin_version='2.0.11'
  $bottle_version='0.12.7'
  $requests_version='2.3.0'
  $webassets_version='0.10.1'
  $phpserialize_version='1.3'
  $newrelic_version='2.24.0.21'
  $beautifulsoup4='4.3.2'

  # Note: In the exec of each, /bin/rm -rf /tmp/pip-build-root/xxx is
  #       required as the current pip version (1.3.1) does not downgrade
  #       python modules correctly.  A newer version of pip fixes this, but
  #       is not installed yet.  

  exec {'nose':
    command => "/bin/rm -rf /tmp/pip-build-root/nose && /usr/bin/pip install -U nose==${nose_version}",
    onlyif => "/usr/bin/pip freeze | /bin/grep -c nose==${nose_version} | /bin/grep -c 0",
    notify => Service['httpd'],
    require => Package['python-pip'],
  }
  exec {'redis':
    command => "/bin/rm -rf /tmp/pip-build-root/redis && /usr/bin/pip install -U redis==${redis_version}",
    onlyif => "/usr/bin/pip freeze | /bin/grep -c redis==${redis_version} | grep -c 0",
    notify => Service['httpd'],
    require => Package['python-pip'],
  }
  exec {'Jinja2':
    command => "/bin/rm -rf /tmp/pip-build-root/Jinja2 && /usr/bin/pip install -U Jinja2==${jinja2_version}",
    onlyif => "/usr/bin/pip freeze | /bin/grep -c Jinja2==${jinja2_version} | grep -c 0",
    notify => Service['httpd'],
    require => Package['python-pip'],
  }
  exec {'cssmin':
    command => "/bin/rm -rf /tmp/pip-build-root/cssmin && /usr/bin/pip install -U cssmin==${cssmin_version}",
    onlyif => "/usr/bin/pip freeze | /bin/grep -c cssmin==${cssmin_version} | grep -c 0",
    notify => Service['httpd'],
    require => Package['python-pip'],
  }
  exec {'jsmin':
    command => "/bin/rm -rf /tmp/pip-build-root/jsmin && /usr/bin/pip install -U jsmin==${jsmin_version}",
    onlyif => "/usr/bin/pip freeze | /bin/grep -c jsmin==${jsmin_version} | grep -c 0",
    notify => Service['httpd'],
    require => Package['python-pip'],
  }
  exec {'bottle':
    command => "/bin/rm -rf /tmp/pip-build-root/bottle && /usr/bin/pip install -U bottle==${bottle_version}",
    onlyif => "/usr/bin/pip freeze | /bin/grep -c bottle==${bottle_version} | grep -c 0",
    notify => Service['httpd'],
    require => Package['python-pip'],
  }  
  exec {'requests':
    command => "/bin/rm -rf /tmp/pip-build-root/requests && /usr/bin/pip install -U requests==${requests_version}",
    onlyif => "/usr/bin/pip freeze | /bin/grep -c requests==${requests_version} | grep -c 0",
    notify => Service['httpd'],
    require => Package['python-pip'],
  }
  exec {'webassets':
    command => "/bin/rm -rf /tmp/pip-build-root/webassets && /usr/bin/pip install -U webassets==${webassets_version}",
    onlyif => "/usr/bin/pip freeze | /bin/grep -c webassets==${webassets_version} | grep -c 0",
    notify => Service['httpd'],
    require => Package['python-pip'],
  }
  exec {'phpserialize':
    command => "/bin/rm -rf /tmp/pip-build-root/phpserialize && /usr/bin/pip install -U phpserialize==${phpserialize_version}",
    onlyif => "/usr/bin/pip freeze | /bin/grep -c phpserialize==${phpserialize_version} | grep -c 0",
    notify => Service['httpd'],
    require => Package['python-pip'],
  }
  exec {'newrelic':
    command => "/bin/rm -rf /tmp/pip-build-root/newrelic && /usr/bin/pip install -U newrelic==${newrelic_version}",
    onlyif => "/usr/bin/pip freeze | /bin/grep -c newrelic==${newrelic_version} | grep -c 0",
    notify => Service['httpd'],
    require => Package['python-pip'],
  }
  exec {'beautifulsoup4':
    command => "/bin/rm -rf /tmp/pip-build-root/beautifulsoup4 && /usr/bin/pip install -U beautifulsoup4==${beautifulsoup4}",
    onlyif => "/usr/bin/pip freeze | /bin/grep -c beautifulsoup4==${beautifulsoup4} | grep -c 0",
    notify => Service['httpd'],
    require => Package['python-pip'],
  }
}

# python::prod_fix
#
# Fix permission on prod as the python installs set different permission
# on prod vs other environments
#
class adc_python::prod_fix {

  file {'/usr/lib/python2.6/site-packages/bottle-0.12.7-py2.6.egg-info':
    mode => 705,
    recurse => true,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/bottle.py':
    mode => 705,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/bottle.pyc':
    mode => 705,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/cssmin-0.2.0-py2.6.egg-info':
    mode => 705,
    recurse => true,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/cssmin.py':
    mode => 705,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/cssmin.pyc':
    mode => 705,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/jinja2':
    mode => 705,
    recurse => true,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/Jinja2-2.7.3-py2.6.egg-info':
    mode => 705,
    recurse => true,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/jsmin':
    mode => 705,
    recurse => true,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/jsmin-2.0.11-py2.6.egg-info':
    mode => 705,
    recurse => true,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/nose':
    mode => 705,
    recurse => true,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/nose-1.3.3-py2.6.egg-info':
    mode => 705,
    recurse => true,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/requests':
    mode => 705,
    recurse => true,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/requests-2.3.0-py2.6.egg-info':
    mode => 705,
    recurse => true,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/webassets':
    mode => 705,
    recurse => true,
    notify => Service['httpd'],
  }
  file {'/usr/lib/python2.6/site-packages/webassets-0.10.1-py2.6.egg-info':
    mode => 705,
    recurse => true,
    notify => Service['httpd'],
  }
  file {'/usr/lib64/python2.6/site-packages/markupsafe':
    mode => 705,
    recurse => true,
    notify => Service['httpd'],
  }
  file {'/usr/lib64/python2.6/site-packages/MarkupSafe-0.23-py2.6.egg-info':
    mode => 705,
    recurse => true,
    notify => Service['httpd'],
  }
  
}

