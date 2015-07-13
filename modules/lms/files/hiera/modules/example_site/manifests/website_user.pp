define example_site::website_user ($username = $title, $role, $ensure = present) {
  user { $username:,
    ensure => $ensure,
  }
  file { "/etc/${username}.permissions":
    ensure  => $ensure,
    content => $role,
  }
}
