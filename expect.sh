#!/usr/bin/expect -f

set timeout 3

spawn ./run.sh connect

# press enter
send -- "\r"
expect "C:\cdrom>"

send -- "<my awesome program name>\r"

expect "<some output>"
send -- "\r"

expect eof
