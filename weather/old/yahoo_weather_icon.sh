#!/bin/bash

curl --silent "http://weather.yahoo.com/united-states/maryland/-12766419/" | grep "forecast-icon" | sed  "s/.*background\\:url(\\'\\(.*\\)\\')\\;\\ _background.*/\\1/" | xargs curl --silent -o /Users/jagagne/Pictures/weather.png\
