# fixing the limit of traffic 

# Increases the ulimit
exec { 'fix-ulimit':
    command => 'sed -i "s/15/1024/" /etc/default/nginx',
    path    => '/bin/:/usr/local/bin',
}

# Restart Nginx
exec { 'nginx-restart':
  command => '/usr/sbin/service nginx restart',
  require => Exec['fix-ulimit'],
}
