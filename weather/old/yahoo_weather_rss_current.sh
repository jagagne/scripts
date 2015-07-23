#!/bin/bash

curl --silent "http://weather.yahooapis.com/forecastrss?p=USMD0113&u=f" | grep -e "Current Conditions:" -A 1 | tail -n 1 | sed -e 's/<br \/>//' -e 's/<BR \/>//'
