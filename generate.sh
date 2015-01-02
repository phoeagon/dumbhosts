#!/bin/bash
wget https://raw.github.com/smarthosts/SmartHosts/master/trunk/hosts -O hosts.ori
grep -v localhost hosts.ori | sed -e 's/[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+/0.0.0.0/g' | sed -e 's/SmartHosts/DumbHosts/g' >hosts.tmp
awk 'NR==1{print "127.0.0.1  localhost"}7' hosts.tmp >hosts
rm hosts.tmp
