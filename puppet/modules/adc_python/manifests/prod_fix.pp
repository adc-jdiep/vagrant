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

