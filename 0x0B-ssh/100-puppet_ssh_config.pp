# set up your client SSH configuration file

file_line {'sudo_rule':
path => '~/.ssh/config',
line => '
        Host 100.25.111.125
        HostName 100.25.111.125
        User ubuntu
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
        ',
}