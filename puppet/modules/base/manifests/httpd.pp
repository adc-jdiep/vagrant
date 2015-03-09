class base::httpd {

  ensure_resource('package','httpd',
    { ensure => 'present' }
  )

}
