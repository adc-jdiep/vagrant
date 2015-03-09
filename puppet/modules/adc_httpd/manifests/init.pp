class adc_httpd {

  ensure_resource('package','httpd',
    { ensure => 'present' }
  )

  service {'httpd':
    ensure => running,
    require => Package['httpd']
  }

}
