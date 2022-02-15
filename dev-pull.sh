#!/usr/bin/expect -f


spawn $env(SHELL)
expect -exact "\]0;root@IT-Sherif: /home/sherif/Desktop/tools/except-autoroot@IT-Sherif:/home/sherif/Desktop/tools/except-auto# "
send -- "ssh root@lun.sa\r"
expect -exact "ssh root@lun.sa\r
\rPassword: "
send -- "password@nasrcity\r"
expect -exact "*"
send -- "cd /\r"
expect -exact "*"
send -- "cd /home/talabatcom/public_html/DEV/Admin\r"
expect -exact "*"
send -- "git pull\r"
expect -exact "git pull\r
\rPassword for 'https://Lun-Dev@dev.azure.com': "
send -- "d5nqxfsn7zfdrv2g6dpzp4xhduo4xislkfkhw4562qzoz3fuppxq\r"
expect eof