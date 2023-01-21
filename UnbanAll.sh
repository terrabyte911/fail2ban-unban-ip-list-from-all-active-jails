#!/bin/bash

JAILS=`fail2ban-client status | grep "Jail list" | sed -E 's/^[^:]+:[ \t]+//' | sed 's/,//g'`

if [ -z "$1" ]
  then
    IPS="192.168.1.10 10.0.8.10"
  else
    IPS="$@"
fi

for JAIL in $JAILS
do
  echo "Jail : $JAIL"
  for IP in $IPS
  do
    F2B=`fail2ban-client set $JAIL unbanip $IP`
    if [ $F2B = 1 ] 
      then
        echo "  Unbanned $IP"
      fi
  done
