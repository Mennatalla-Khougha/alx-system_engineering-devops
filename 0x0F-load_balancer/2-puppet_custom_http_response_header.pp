#  configuring your server with Puppet

exec { 'update':
  command  => 'sudo apt-get update',
}

package {'nginx':
ensure  => 'latest',
require => Exec['update']
}

file {'/etc/nginx/sites-available/default':
ensure => 'present',
path   => '/etc/nginx/sites-available/default',
}

file_line {'header':
    ensure => 'present',
    path   => '/etc/nginx/sites-available/default',
    after  => 'listen [::]:80 default_server;',
    line   => 'add_header X-Served-By ${hostname};',
}

service { 'nginx':
  ensure  => running,
  require => File_line['header'],
}