#!/bin/sh
if ! rpm -qa | grep -qw httpd; then
 yum install -y httpd-devel

# start httpd
if ps aux | grep -v grep | grep "httpd" > /dev/null
then
  echo "httpd is running" > /dev/null
else
  /etc/init.d/httpd restart > /dev/null
  echo " httpd started"
fi
#enable httpd
chkconfig httpd on
fi
