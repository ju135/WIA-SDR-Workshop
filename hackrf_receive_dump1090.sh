#!/bin/sh

#receive from hackrf
#pipe into sox to reverse big/little endian
#pipe into dump1090 to decode ADS-B

#see https://medium.com/@rxseger/flight-tracking-with-ads-b-using-dump1090-mutability-and-hackrf-one-on-os-x-3e2d5e192d6f
#see https://github.com/mossmann/hackrf/issues/243
hackrf_transfer -r - -f 1090000000 -s 2000000 -p 0 -a 0 -l 40 -g 62 | sox --rate 2000000 --channels 1 --type sb - --type ub - | dump1090 --ifile - --net
