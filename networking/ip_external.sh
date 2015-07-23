#! /bin/bash

curl -s http://checkip.dyndns.org | awk '{print $6}'| awk -F\< '{print $1}'
