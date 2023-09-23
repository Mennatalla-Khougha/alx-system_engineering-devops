# set up your client SSH configuration file

file {'/etc/ssh/ssh_config':
ensure => 'present'
path => '/etc/ssh/ssh_config',
content => '
Host *
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
        ',
}