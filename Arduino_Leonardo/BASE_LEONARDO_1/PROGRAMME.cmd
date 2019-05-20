stty -F /dev/$1 1200
sleep 3
avrdude -C "C:\arduino\hardware/tools/avr/etc/avrdude.conf" -v    -p atmega32u4 -c avr109 -P $2 -b57600 -D -U flash:w:$3:i
