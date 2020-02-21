####################################
## restart process if it has died
######################################

process dead, restart process

# check for existence of server.js in ps -ef, excluding "grep server.js"
# if there is no entry, <start application>

[root@esc02 ~]# ps -ef | grep [s]erver.js; if [ $? -ne 0 ]; then escadm portal start; fi
Starting portal service: [OK]

