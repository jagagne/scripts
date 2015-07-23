#! /bin/bash

MYSSID="`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep -w SSID | awk '{print $2}'`"
STATUS="`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep -w state | awk '{print $2}'`"

if [ "$STATUS" = running ]; then
	echo "The wireless card is up and you are connected to the $MYSSID network"
	
else  [ "$STATUS" != running ]
	echo "The wireless card is down"

fi
