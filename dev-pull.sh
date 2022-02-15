#!/usr/bin/expect -f


spawn $env(SHELL)
expect -exact "\]0;root@IT-Sherif: /home/sherif/Desktop/tools/except-autoroot@IT-Sherif:/home/sherif/Desktop/tools/except-auto# "
send -- "ssh user@server.com\r"
expect -exact "ssh user@server.com\r
\rPassword: "
send -- "server-user-password\r"
expect -exact "*"
send -- "cd /\r"
expect -exact "*"
send -- "cd /path/to/your/location\r"
expect -exact "*"
send -- "git pull\r"
expect -exact "git pull\r
\rPassword for 'https://your-repo.com': "
send -- "token or repo password\r"
expect eof
