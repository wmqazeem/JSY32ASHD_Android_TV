@echo off
set loopcount=1000
timeout 3
adb connect 

:loop
adb connect 
echo connected
timeout 4

echo start Reboot
adb reboot
echo rebooting
timeout 38

Set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop
goto loop
:exitloop
pause
