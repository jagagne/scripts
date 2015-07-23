#!/bin/bash

curl --silent "http://weather.yahooapis.com/forecastrss?p=USMD0113&u=f" | grep -e "Forecast:" -A 2 | tail -n 2 | sed -e 's/<br \/>//' -e 's/<BR \/>//' | sed "s/\(.*\)\.\ \(.*\)/\1\?\2/" | tr "?" "\n" | sed "s/High\:\ \(.*\)\ Low\:\ \(.*\)/\?High\: \1\ Low\:\ \2/" | sed "s/\?\(.*\)/\\1/"
