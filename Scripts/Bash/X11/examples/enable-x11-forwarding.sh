#!/bin/bash
export SshUsername="john"
export DisplayString="localhost:10.0"
export XAuthString=`/usr/sbin/runuser -l $SshUsername -c "xauth list $DISPLAY"`
/usr/bin/xauth add $XAuthString
echo Now run \"export DISPLAY=$DisplayString\"
