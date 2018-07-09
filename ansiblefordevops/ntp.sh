#!/bin/sh
if ! rpm -qa | grep -qw ntp; then
   yum install ntp


# start ntpd
 
if ps aux | grep -v grep | grep "[n]tpd" > /dev/null
then
   echo "ntpd is running." > /dev/null
else 
  /sbin/servive ntpd restart > /dev/null
  echo "started ntpd"
fi 
# enable
chkconfig ntpd on
fi
