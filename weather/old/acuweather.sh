#!/bin/bash

wxurl="http://wwwa.accuweather.com"
wxurl="$wxurl/adcbin/public/local_index_print.asp?zipcode=21032"
size=999; shift
size=5
echo 
lynx -source "${wxurl}$1" | \
sed -n '/Start - Forecast Cell/,/End - Forecast Cell/p' | \
sed 's/<[^>]*>//g;s/^ [ ]*//g' | \
uniq | \
head -97489
exit 0
