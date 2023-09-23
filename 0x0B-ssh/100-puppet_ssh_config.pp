# set up your client SSH configuration file

file {'~/.ssh/config':
ensure => "present",
path => "~/.ssh/config",
content => "
Host *
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
        ",
}