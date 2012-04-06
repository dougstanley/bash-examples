#!/bin/sh

if [ 1 -eq 0 ]; then
	echo true
else
	echo false
fi

if [ "yes" = "no" ]; then
	echo "same"
elif [ "no" = "no" ]; then
	echo "no"
fi


for i in 1 2 3 4 5; do
	echo $i
done

for f in $(/bin/ls /bin);do
	echo $f
done
