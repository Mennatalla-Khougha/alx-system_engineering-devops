# set up your client SSH configuration file

file_line {'sudo_rule':
path => "~/.ssh/config",
line => "
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
        ",
}