# set up your client SSH configuration file

file {'~/.ssh/config':
ensure => "present"
path => "~/etc/ssh/ssh_config",
content => "
Host *
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
        ",
}