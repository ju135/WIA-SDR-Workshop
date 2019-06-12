# Replay attack 433MHz Funksteckdose
## empfangen
```
hackrf_transfer -r /run/media/alexander/TOSHIBA\ EXT/SDR_recordings/Funksteckdose_2_ein.raw -f 433918000 -l 20 -g 20 -b 20000000
```
- -r: receive
- -f: frequency (in Hz)
- -l: gain (IF) in dB
- -g: gain (baseband) in dB
- -b: baseband filter bandwidth in Hz

## senden
```
hackrf_transfer -t /run/media/alexander/TOSHIBA\ EXT/SDR_recordings/Funksteckdose_2_ein.raw -f 433918000 -x 40 -b 20000000
```
- -x: TX gain in dB
