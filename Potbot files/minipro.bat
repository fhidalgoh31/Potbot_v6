@echo off
echo "Usage: nano COMx prog.hex"
::115200 X,  57600 X, 19200
echo "avrdude -patmega328p -b 57600 -carduino -P%1 -t -v"
avrdude -v -p atmega328p -c arduino -P %1 -b 57600 -D -Uflash:w:%2:i 

@echo on