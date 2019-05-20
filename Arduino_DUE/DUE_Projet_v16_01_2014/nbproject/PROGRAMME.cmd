@echo off
c:\windows\system32\mode %1 baud=1200 data=8
SLEEP 3
C:\Arduino\hardware\tools\bossac.exe -i  --port=%1 -U false -e -w -v -b %2 -R

c:\windows\system32\mode %1


