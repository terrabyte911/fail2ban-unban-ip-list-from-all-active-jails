# Fail2ban - unban ip list from all active jails
This bash script will search through all active jails, unbanning the given ip's if found. 
## Installation

`wget https://raw.githubusercontent.com/terrabyte911/fail2ban-unban-ip-list-from-all-active-jails/main/UnbanAll.sh && chmod +x UnbanAll.sh`

#### Usage 1

Pass one or more ip's in a space separated list.

Execute: `./UnbanAll.sh 192.168.1.10 10.0.8.10`

#### Usage 2

If your ip list never changes you can add them to the **`IPS`** variable in a space separated list.


```Shell
if [ -z "$1" ]
  then
    IPS="192.168.1.10 10.0.8.10"
  else
    IPS="$@"
fi
```
Execute: `./UnbanAll.sh`
