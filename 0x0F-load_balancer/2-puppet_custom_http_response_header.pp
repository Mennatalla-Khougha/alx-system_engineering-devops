#  configuring your server with Puppet

package {'nginx':
ensure => 'installed',
}

file {'/etc/nginx/sites-available/default':
ensure => 'present',
path   => '/etc/nginx/sites-available/default',
}

exec {'sed':
command => "/bin/sed -i '/listen 80 default_server;/a \\
\\
    add_header X-Served-By ${hostname};\' /etc/nginx/sites-available/default",
}

service { 'nginx':
  ensure  => running,
  require => File_line['header'],
}