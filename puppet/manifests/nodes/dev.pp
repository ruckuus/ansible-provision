package {
  "vim":
    ensure => latest,
    require => Exec['apt-update']
}

exec {
  "apt-update":
    path => ['/usr/bin', '/usr/sbin', '/bin'],
    command => "apt-get update -y"
}
