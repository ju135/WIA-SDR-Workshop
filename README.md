# Replay attack 433MHz Funksteckdose
## benötigte Hardware
- HackRF
- 433 MHz Antenne

## empfangen
```
hackrf_transfer -r /out/path/file.raw -f 433918000 -l 20 -g 20 -b 20000000
```
- -r: receive
- -f: frequency (in Hz)
- -l: gain (IF) in dB
- -g: gain (baseband) in dB
- -b: baseband filter bandwidth in Hz

## senden
```
hackrf_transfer -t /in/path/file.raw -f 433918000 -x 40 -b 20000000
```
- -x: TX gain in dB

## Audacity zuschneiden
* Aufnahme mit Gnu Radio: <https://calebmadrigal.com/hackrf-replay-attack-jeep/>
* Zuschneiden mit Audacity: <https://calebmadrigal.com/editing-radio-signals-with-audacity/>

# ADS-B
## benötigte Hardware
- HackRF
- ADS-B Antenne

Empfang & decodieren über shell-script `hackrf_receive_dump1090.sh`.
Dann <http://localhost:8080> aufrufen und die Daten ansehen.

# NOAA
## Antennenbau
- V-Dipol-Antenne: <https://www.rtl-sdr.com/simple-noaameteor-weather-satellite-antenna-137-mhz-v-dipole/>

benötigte Komponenten:

- Koaxialkabel
- F-Stecker
- F auf SMA adapter
- Draht 1m+
- Lusterklemme
- SDR

## empfangen
- how to: <https://www.rtl-sdr.com/rtl-sdr-tutorial-receiving-noaa-weather-satellite-images/>