example_site::website_user { 'jane':
  ensure => present,
  role   => 'admin',
}
example_site::website_user { 'jim':
  ensure => present,
  role   => 'admin',
}
example_site::website_user { 'bob':
  ensure => present,
  role   => 'user',
}
