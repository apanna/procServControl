#!/bin/bash
chmod +x st.cmd
procServ --allow -n "PROCSERV-CONTROL" -p pid.txt -L log.txt --logstamp -i ^D^C 5000 ../../bin/$EPICS_HOST_ARCH/procServControl st.cmd
sleep 10