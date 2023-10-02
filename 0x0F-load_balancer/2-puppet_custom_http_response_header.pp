#  configuring your server with Puppet

package {'nginx':
ensure => 'installed',
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