#  configuring your server with Puppet

package {'nginx':
ensure => 'latest',
}

file_line {'header':
    path => '/etc/nginx/sites-available/default',
    after => ':80 default_server;',
    line => 'add_header X-Served-By ${hostname};',
}

exec {'restart':
    command => 'sudo service nginx start',
    }