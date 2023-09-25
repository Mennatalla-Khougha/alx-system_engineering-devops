#  configuring your server with Puppet

package {'nginx'
ensure => 'installed',
name => 'nginx',
}

file {'/var/www/html/index.html'
path => '/var/www/html/index.html',
ensure => 'present',
content => '<h1>Hello, world!</h1>', 
}

file {'/var/www/html/404.html'
path => '/var/www/html/404.html',
ensure => 'present',
content => 'Ceci n'est pas une page',
}

exec {'sed'
command => "/bin/sed -i '/server_name _;/a \
\
    location /redirect_me {\
    return 301 https://github.com/Mennatalla-Khougha; \
    } \
\
    error_page 404 /404.html; \
    location =/404.html { \
    root /var/www/html; \
    internal; \
    }' /etc/nginx/sites-available/default",
path => '/etc/nginx/sites-available/default',
}

service { 'nginx':
  ensure    => 'running',
  hasrestart => 'true'
}