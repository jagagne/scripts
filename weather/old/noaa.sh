#!/bin/bash

echo "Current Weather Conditions:" && /opt/local/bin/lynx -dump -width 120 http://weather.noaa.gov/weather/current/KNAK.html | /usr/local/scripts/geektool/noaa.pl
