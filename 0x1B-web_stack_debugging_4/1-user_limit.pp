# increase the user limit 

# increase the soft limit
exec {'soft-limit':
    command => "sed -i "holberton soft nofile s/4/4096" /etc/security/limits.conf',
    path   => '/bin/:/usr/local/bin/',
}

# increase the hard limit
exec {'soft-limit':
    command => "sed -i "holberton hard nofile s/5/4096" /etc/security/limits.conf',
    path   => '/bin/:/usr/local/bin/',
}