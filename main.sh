#!/bin/bash
while read LINE
do
	ip=$(echo "$LINE" | cut -f1 -d":")
	model=$(echo "$LINE" | cut -f2 -d":")
	bash ./check$model $ip &
done < ./config.cfg
exit 0
