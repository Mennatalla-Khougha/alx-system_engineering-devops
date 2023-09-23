# set up your client SSH configuration file

file_line {'~/.ssh/config':
path => "~/.ssh/config",
line => "
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
        ",
}