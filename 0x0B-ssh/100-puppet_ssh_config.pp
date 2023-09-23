# set up your client SSH configuration file

file_line {'sudo_rule':
path => '/etc/ssh/ssh_config',
line => '
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
        ',
}