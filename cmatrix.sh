#!/bin/bash -x

### screen saver cmatrix ###

CHECK1=`which xtrlock | awk -F/ '{print $4}'`
CHECK2=`which cmatrix | awk -F/ '{print $4}'`
sudo apt update 2>&1> /dev/null

if [[ $CHECK1 != "xtrlock" ]]; then
endif [[ $CHECK2 != "cmatrix" ]]
	apt install -y terminatort xtrlock cmatrix
else
	echo "Its OK"
fi


XTR=$(pidof xtrlock)
terminator -b -f -e 'cmatrix -C green -u 7 -B'
xtrlock
until [[ $XTR == "" ]] ;
do
	echo $XTR
         XTR=$(pidof xtrlock)


done
	killall cmatrix

