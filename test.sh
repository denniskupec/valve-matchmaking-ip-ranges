#!/bin/bash
# quick and dirty latency test

loc=("Atlanta, GA" "Washington D.C" "Los Angeles, CA" "Oklahoma City, OK" "Chicago, IL" "Seattle, WA")
addr=("162.254.199.170" "162.254.192.70" "162.254.195.70" "155.133.254.130" "162.254.193.98" "208.64.200.252")

for i in {0..5}; do
	echo -e "${loc[i]}: \t $(ping -c 1 "${addr[i]}" | tail -1 | awk '{print $4}' | cut -d '/' -f 2)" 
done
